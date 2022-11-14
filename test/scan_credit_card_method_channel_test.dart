import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scan_credit_card/scan_credit_card_method_channel.dart';

void main() {
  MethodChannelScanCreditCard platform = MethodChannelScanCreditCard();
  const MethodChannel channel = MethodChannel('scan_credit_card');

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
