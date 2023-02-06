import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logkar/logkar_method_channel.dart';

void main() {
  MethodChannelLogkar platform = MethodChannelLogkar();
  const MethodChannel channel = MethodChannel('logkar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
