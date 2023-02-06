import 'package:flutter_test/flutter_test.dart';
import 'package:logkar/logkar.dart';
import 'package:logkar/logkar_platform_interface.dart';
import 'package:logkar/logkar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLogkarPlatform
    with MockPlatformInterfaceMixin
    implements LogkarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LogkarPlatform initialPlatform = LogkarPlatform.instance;

  test('$MethodChannelLogkar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLogkar>());
  });

  test('getPlatformVersion', () async {
    Logkar logkarPlugin = Logkar();
    MockLogkarPlatform fakePlatform = MockLogkarPlatform();
    LogkarPlatform.instance = fakePlatform;

    expect(await logkarPlugin.getPlatformVersion(), '42');
  });
}
