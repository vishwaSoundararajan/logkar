import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'logkar_platform_interface.dart';

/// An implementation of [LogkarPlatform] that uses method channels.
class MethodChannelLogkar extends LogkarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('logkar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }


  @override
pushLocation(double lat,double lang) async {
     methodChannel.invokeMethod<String>('pushLocation', {'lat': lat, 'lang': lang});

  }
}
