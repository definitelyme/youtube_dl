
import 'dart:async';

import 'package:flutter/services.dart';

class YoutubeDl {
  static const MethodChannel _channel =
      const MethodChannel('youtube_dl');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
