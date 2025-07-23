import Flutter
import UIKit
import Foundation

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  override func applicationDidBecomeActive(_ application: UIApplication) {
    super.applicationDidBecomeActive(application)
    setupMethodChannels()
  }
  
  private func setupMethodChannels() {
    guard let controller = window?.rootViewController as? FlutterViewController else {
      return
    }
    
    let deviceInfoChannel = FlutterMethodChannel(name: "device_info_channel",
                                              binaryMessenger: controller.binaryMessenger)
    
    deviceInfoChannel.setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      switch call.method {
      case "getDeviceInfo":
        let deviceInfo = self.getDeviceInfo()
        result(deviceInfo)
      default:
        result(FlutterMethodNotImplemented)
      }
    })
    
    // Register PlatformView
    let registrar = self.registrar(forPlugin: "NativeButtonViewPlugin")
    let factory = NativeButtonViewFactory(messenger: registrar!.messenger())
    registrar!.register(factory, withId: "native_button_view")
  }
  
  private func getDeviceInfo() -> [String: Any] {
    UIDevice.current.isBatteryMonitoringEnabled = true
    let batteryLevel = Int(UIDevice.current.batteryLevel * 100)
    let isCharging = UIDevice.current.batteryState == .charging || UIDevice.current.batteryState == .full
    let deviceModel = UIDevice.current.model
    let systemTime = ISO8601DateFormatter().string(from: Date())
    
    return [
      "batteryLevel": batteryLevel,
      "deviceModel": deviceModel,
      "isCharging": isCharging,
      "systemTime": systemTime
    ]
  }
}

class NativeButtonViewFactory: NSObject, FlutterPlatformViewFactory {
  private var messenger: FlutterBinaryMessenger

  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
    super.init()
  }

  func create(
    withFrame frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?
  ) -> FlutterPlatformView {
    return NativeButtonView(
      frame: frame,
      viewIdentifier: viewId,
      arguments: args,
      binaryMessenger: messenger
    )
  }
  
  func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
    return FlutterStandardMessageCodec.sharedInstance()
  }
}

class NativeButtonView: NSObject, FlutterPlatformView {
  private var _view: UIButton
  private var _messenger: FlutterBinaryMessenger

  init(
    frame: CGRect,
    viewIdentifier viewId: Int64,
    arguments args: Any?,
    binaryMessenger messenger: FlutterBinaryMessenger
  ) {
    _view = UIButton(type: .system)
    _messenger = messenger
    super.init()
    
    if let args = args as? [String: Any],
       let buttonText = args["buttonText"] as? String {
      _view.setTitle(buttonText, for: .normal)
    } else {
      _view.setTitle("Refresh Battery", for: .normal)
    }
    
    _view.backgroundColor = UIColor.systemBlue
    _view.setTitleColor(.white, for: .normal)
    _view.layer.cornerRadius = 8
    _view.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
  }

  func view() -> UIView {
    return _view
  }
  
  @objc private func buttonTapped() {
    let channel = FlutterMethodChannel(name: "native_button_channel", binaryMessenger: _messenger)
    channel.invokeMethod("buttonPressed", arguments: nil)
  }
}
