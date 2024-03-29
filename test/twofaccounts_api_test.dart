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


/// tests for TwofaccountsApi
void main() {
  // final instance = TwofaccountsApi();

  group('tests for TwofaccountsApi', () {
    // Mass delete 2FA accounts
    //
    // Mass deletes 2FA accounts of the authenticated user matching the IDs passed as query parameter.  A `204 — No Content` response will be returned even if some resources no longer exist before delete.
    //
    //Future deleteTwofaccounts(String ids) async
    test('test deleteTwofaccounts', () async {
      // TODO
    });

    // Delete 2FA account
    //
    // Deletes a 2FA account of the authenticated user
    //
    //Future deleteTwofaccountsId(int id) async
    test('test deleteTwofaccountsId', () async {
      // TODO
    });

    // Get all 2FA accounts of a group
    //
    // Finds all existing 2FA accounts assigned to a group of the authenticated user
    //
    //Future<List<Model2FAccountRead>> getGroupsIdTwofaccounts({ bool withSecret }) async
    test('test getGroupsIdTwofaccounts', () async {
      // TODO
    });

    // Get all 2FA accounts
    //
    // Find all 2FA accounts of the authenticated user
    //
    //Future<List<Model2FAccountRead>> getTwofaccounts({ bool withSecret, String ids, bool withOtp }) async
    test('test getTwofaccounts', () async {
      // TODO
    });

    // Export 2FA accounts
    //
    // Exports a list of 2FA accounts of the authenticated user to a json file
    //
    //Future<GetTwofaccountsExport200Response> getTwofaccountsExport(String ids) async
    test('test getTwofaccountsExport', () async {
      // TODO
    });

    // Find 2FA account by ID
    //
    // Returns a single 2FA account of the authenticated user
    //
    //Future<Model2FAccountRead> getTwofaccountsId({ bool withSecret }) async
    test('test getTwofaccountsId', () async {
      // TODO
    });

    // Withdraw accounts from groups
    //
    // Removes a list of 2FA accounts of the authenticated user from any group
    //
    //Future<Object> patchTwofaccountsWithdraw(String ids) async
    test('test patchTwofaccountsWithdraw', () async {
      // TODO
    });

    // Create 2FA account
    //
    // Creates a new 2FA account for the authenticated user
    //
    //Future<Model2FAccountRead> postTwofaccounts({ PostTwofaccountsRequest postTwofaccountsRequest }) async
    test('test postTwofaccounts', () async {
      // TODO
    });

    // Convert a migration resource
    //
    // Use this endpoint to convert exported 2FAs from another 2FA app to a list of 2FA resources you can POST using the API to create new 2FA accounts.  > This endpoint does not store anything in database.
    //
    //Future<List<Model2FAccountMigrated>> postTwofaccountsMigration({ bool withSecret, PostTwofaccountsMigrationRequest postTwofaccountsMigrationRequest }) async
    test('test postTwofaccountsMigration', () async {
      // TODO
    });

    // Preview 2FA account
    //
    // Use this endpoint to preview a 2FA account described by an otpauth URI. It works exactly as if you POSTed an URI to create a 2FA account except it does not save anything in database.
    //
    //Future<Model2FAccountRead> postTwofaccountsPreview({ OtpauthUri otpauthUri }) async
    test('test postTwofaccountsPreview', () async {
      // TODO
    });

    // Save order of the 2FA accounts collection
    //
    // Saves the order of the 2FA accounts of the authenticated user. This allows to always serve the 2FA accounts collection sorted in a user defined order.
    //
    //Future<Object> postTwofaccountsReorder({ PostTwofaccountsReorderRequest postTwofaccountsReorderRequest }) async
    test('test postTwofaccountsReorder', () async {
      // TODO
    });

    // Update 2FA account
    //
    // Updates a 2FA account of the authenticated user
    //
    //Future<Model2FAccountRead> putTwofaccountsId(int id, { Model2FAccountUpdate model2FAccountUpdate }) async
    test('test putTwofaccountsId', () async {
      // TODO
    });

  });
}
