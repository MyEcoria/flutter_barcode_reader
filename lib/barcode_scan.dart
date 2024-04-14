import 'dart:async';

import 'package:flutter/services.dart';

enum OverlayTheme {
  KALIUM,
  NATRIUM,
  IRIDIUM,
  TITANIUM,
  BERYLLIUM,
  RUTHIUM,
  RADIUM,
  INDIUM,
  NEPTUNIUM,
  THORIUM,
  CARBON,
  URANIUM,
  BLAISE,
  BLAISEDARK,
  COPPER
}

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const MethodChannel _channel =
      const MethodChannel('com.apptreesoftware.barcode_scan');
  static Future<String?> scan(OverlayTheme theme) async {
    assert(theme != null);
    String? themeStr;
    switch (theme) {
      case OverlayTheme.KALIUM:
        themeStr = "kalium";
        break;
      case OverlayTheme.NATRIUM:
        themeStr = "natrium";
        break;
      case OverlayTheme.IRIDIUM:
        themeStr = "iridium";
        break;
      case OverlayTheme.TITANIUM:
        themeStr = "titanium";
        break;
      case OverlayTheme.BERYLLIUM:
        themeStr = "beryllium";
        break;
      case OverlayTheme.RUTHIUM:
        themeStr = "ruthium";
        break;
      case OverlayTheme.RADIUM:
        themeStr = "radium";
        break;
      case OverlayTheme.INDIUM:
        themeStr = "indium";
        break;
      case OverlayTheme.NEPTUNIUM:
        themeStr = "neptunium";
        break;
      case OverlayTheme.THORIUM:
        themeStr = "thorium";
        break;
      case OverlayTheme.CARBON:
        themeStr = "carbon";
        break;
      case OverlayTheme.URANIUM:
        themeStr = "uranium";
        break;
      case OverlayTheme.BLAISE:
        themeStr = "blaise";
        break;
      case OverlayTheme.BLAISEDARK:
        themeStr = "blaisedark";
        break;
      case OverlayTheme.COPPER:
        themeStr = "copper";
        break;
    }
    final Map<String, dynamic> params = <String, dynamic>{
      'theme': themeStr,
    };
    return await _channel.invokeMethod('scan', params);
  }
}
