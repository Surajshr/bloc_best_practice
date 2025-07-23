import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NativeButtonView extends StatefulWidget {
  final VoidCallback? onPressed;

  const NativeButtonView({
    super.key,
    this.onPressed,
  });

  @override
  State<NativeButtonView> createState() => _NativeButtonViewState();
}

class _NativeButtonViewState extends State<NativeButtonView> {
  static const MethodChannel _channel = MethodChannel('native_button_channel');

  @override
  void initState() {
    super.initState();
    _setupMethodChannel();
  }

  void _setupMethodChannel() {
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'buttonPressed') {
        widget.onPressed?.call();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AndroidView(
        viewType: 'native_button_view',
        onPlatformViewCreated: _onPlatformViewCreated,
        creationParams: const <String, dynamic>{
          'buttonText': 'Refresh Battery',
        },
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
        viewType: 'native_button_view',
        onPlatformViewCreated: _onPlatformViewCreated,
        creationParams: const <String, dynamic>{
          'buttonText': 'Refresh Battery',
        },
        creationParamsCodec: const StandardMessageCodec(),
      );
    } else {
      // Fallback for web/desktop
      return ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text('Refresh Battery'),
      );
    }
  }

  void _onPlatformViewCreated(int id) {
    // Platform view created
  }
}
