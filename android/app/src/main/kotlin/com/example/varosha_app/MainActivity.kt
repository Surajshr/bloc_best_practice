package com.example.varosha_app

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build
import android.view.View
import android.widget.Button
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : FlutterActivity() {
    private val CHANNEL = "device_info_channel"
    private val VIEW_TYPE = "native_button_view"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Register MethodChannel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "getDeviceInfo" -> {
                    val deviceInfo = getDeviceInfo()
                    result.success(deviceInfo)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }

        // Register PlatformView
        flutterEngine.platformViewsController.registry.registerViewFactory(VIEW_TYPE, NativeButtonViewFactory(flutterEngine.dartExecutor.binaryMessenger))
    }

    private fun getDeviceInfo(): Map<String, Any> {
        val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
        val batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        val isCharging = batteryManager.isCharging
        val deviceModel = Build.MODEL
        val systemTime = SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.getDefault()).format(Date())

        return mapOf(
            "batteryLevel" to batteryLevel,
            "deviceModel" to deviceModel,
            "isCharging" to isCharging,
            "systemTime" to systemTime
        )
    }
}

class NativeButtonViewFactory(
    private val messenger: io.flutter.plugin.common.BinaryMessenger
) : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        val creationParams = args as Map<String?, Any?>?
        return NativeButtonView(context, viewId, creationParams, messenger)
    }
}

class NativeButtonView(
    private val context: Context,
    private val viewId: Int,
    private val creationParams: Map<String?, Any?>?,
    private val messenger: io.flutter.plugin.common.BinaryMessenger
) : PlatformView {
    private val button: Button
    private val methodChannel: MethodChannel

    init {
        button = Button(context)
        button.text = creationParams?.get("buttonText") as? String ?: "Refresh Battery"
        button.setBackgroundColor(0xFF2196F3.toInt()) // Blue color
        button.setTextColor(0xFFFFFFFF.toInt()) // White text
        button.setOnClickListener {
            methodChannel.invokeMethod("buttonPressed", null)
        }
        
        // Create method channel for this view
        methodChannel = MethodChannel(messenger, "native_button_channel")
    }

    override fun getView(): View {
        return button
    }

    override fun dispose() {
        // Clean up resources if needed
    }
}
