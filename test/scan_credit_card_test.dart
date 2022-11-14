import 'package:flutter_test/flutter_test.dart';
import 'package:scan_credit_card/scan_credit_card.dart';
import 'package:scan_credit_card/scan_credit_card_platform_interface.dart';
import 'package:scan_credit_card/scan_credit_card_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockScanCreditCardPlatform
    with MockPlatformInterfaceMixin
    implements ScanCreditCardPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ScanCreditCardPlatform initialPlatform = ScanCreditCardPlatform.instance;

  test('$MethodChannelScanCreditCard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelScanCreditCard>());
  });

  test('getPlatformVersion', () async {
    ScanCreditCard scanCreditCardPlugin = ScanCreditCard();
    MockScanCreditCardPlatform fakePlatform = MockScanCreditCardPlatform();
    ScanCreditCardPlatform.instance = fakePlatform;

    expect(await scanCreditCardPlugin.getPlatformVersion(), '42');
  });
}
