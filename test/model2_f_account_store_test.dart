//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for Model2FAccountStore
void main() {
  // final instance = Model2FAccountStore();

  group('test Model2FAccountStore', () {
    // The Issuer of the 2FA account
    // String service
    test('to test the property `service`', () async {
      // TODO
    });

    // The Label of the 2FA account
    // String account
    test('to test the property `account`', () async {
      // TODO
    });

    // The filename of the icon which decorate the 2FA account
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // The type of 2FA account
    // String otpType
    test('to test the property `otpType`', () async {
      // TODO
    });

    // A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
    // String secret
    test('to test the property `secret`', () async {
      // TODO
    });

    // The number of digits of the generated One-Time Password
    // int digits
    test('to test the property `digits`', () async {
      // TODO
    });

    // The algorithm used to generate the One-Time Password
    // String algorithm (default value: 'sha1')
    test('to test the property `algorithm`', () async {
      // TODO
    });

    // For TOTP only: The validity duration of One-Time Password generated for the account
    // int period (default value: 30)
    test('to test the property `period`', () async {
      // TODO
    });

    // for HOTP only: The value of the counter used to synchronize the account with its verification servers
    // int counter (default value: 0)
    test('to test the property `counter`', () async {
      // TODO
    });


  });

}
