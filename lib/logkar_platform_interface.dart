import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'logkar_method_channel.dart';

abstract class LogkarPlatform extends PlatformInterface {
  /// Constructs a LogkarPlatform.
  LogkarPlatform() : super(token: _token);

  static final Object _token = Object();

  static LogkarPlatform _instance = MethodChannelLogkar();

  /// The default instance of [LogkarPlatform] to use.
  ///
  /// Defaults to [MethodChannelLogkar].
  static LogkarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LogkarPlatform] when
  /// they register themselves.
  static set instance(LogkarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void pushLocation(double lat, double lang) {
    throw UnimplementedError('pushLocation() has not been implemented.');
  }
}
