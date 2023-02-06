import 'dart:async';
import 'dart:ffi';
import 'logkar_platform_interface.dart';

class Logkar {
  Future<String?> getPlatformVersion() {
    return LogkarPlatform.instance.getPlatformVersion();
  }
  pushLocation(double lat, double lang) {
    LogkarPlatform.instance.pushLocation(lat, lang);
  }

}
