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

// tests for Model2FAccountExport
void main() {
  // final instance = Model2FAccountExport();

  group('test Model2FAccountExport', () {
    // The Issuer of the 2FA account
    // Object service
    test('to test the property `service`', () async {
      // TODO
    });

    // The Label of the 2FA account
    // Object account
    test('to test the property `account`', () async {
      // TODO
    });

    // The filename of the icon which decorate the 2FA account
    // Object icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // The type of 2FA account
    // Object otpType
    test('to test the property `otpType`', () async {
      // TODO
    });

    // A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
    // Object secret
    test('to test the property `secret`', () async {
      // TODO
    });

    // The number of digits of the generated One-Time Password
    // Object digits
    test('to test the property `digits`', () async {
      // TODO
    });

    // The algorithm used to generate the One-Time Password
    // Object algorithm (default value: sha1)
    test('to test the property `algorithm`', () async {
      // TODO
    });

    // For TOTP only: The validity duration of One-Time Password generated for the account
    // Object period (default value: 30)
    test('to test the property `period`', () async {
      // TODO
    });

    // for HOTP only: The value of the counter used to synchronize the account with its verification servers
    // Object counter (default value: 0)
    test('to test the property `counter`', () async {
      // TODO
    });

    // Mime-type of the image
    // String iconMime
    test('to test the property `iconMime`', () async {
      // TODO
    });

    // Content of the image, encoded in base32
    // String iconFile
    test('to test the property `iconFile`', () async {
      // TODO
    });

    // The original otpauth URI of the 2FA account
    // String legacyUri
    test('to test the property `legacyUri`', () async {
      // TODO
    });


  });

}
