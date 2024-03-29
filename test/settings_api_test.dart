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


/// tests for SettingsApi
void main() {
  // final instance = SettingsApi();

  group('tests for SettingsApi', () {
    // Delete custom setting
    //
    // Deletes a custom application setting.  Settings endpoints are restricted to user with an `Administrator` role.
    //
    //Future deleteSettingsName(String name) async
    test('test deleteSettingsName', () async {
      // TODO
    });

    // Get all settings
    //
    // List all application settings. This includes 2FAuth native settings and possible additional admin-defined settings.  Settings endpoints are restricted to user with an `Administrator` role.
    //
    //Future<List<Setting>> getSettings() async
    test('test getSettings', () async {
      // TODO
    });

    // Find setting by name
    //
    // Returns a single application setting, whether it is a native 2FAuth setting or a custom setting.  Settings endpoints are restricted to user with an `Administrator` role.
    //
    //Future<Setting> getSettingsName(String name) async
    test('test getSettingsName', () async {
      // TODO
    });

    // Create custom setting
    //
    // Creates a new custom application setting. You are free to use this endpoint to store any data you need to administrate your own app.  Settings endpoints are restricted to user with an `Administrator` role.
    //
    //Future<Setting> postSettings({ Setting setting }) async
    test('test postSettings', () async {
      // TODO
    });

    // Update setting
    //
    // Updates an application setting, whether it is a native 2FAuth setting or a custom setting. Will create the setting if it does not exist.  Settings endpoints are restricted to user with an `Administrator` role.
    //
    //Future<Setting> putSettingsName(String name, { PutSettingsNameRequest putSettingsNameRequest }) async
    test('test putSettingsName', () async {
      // TODO
    });

  });
}
