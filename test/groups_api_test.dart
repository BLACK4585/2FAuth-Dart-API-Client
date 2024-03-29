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


/// tests for GroupsApi
void main() {
  // final instance = GroupsApi();

  group('tests for GroupsApi', () {
    // Delete group
    //
    // Deletes a group of the authenticated user. This will not delete any assigned 2FA accounts.
    //
    //Future deleteGroupsId(int id) async
    test('test deleteGroupsId', () async {
      // TODO
    });

    // Get all groups
    //
    // Find all groups of the authenticated user
    //
    //Future<List<GroupRead>> getGroups() async
    test('test getGroups', () async {
      // TODO
    });

    // Find group by ID
    //
    // Returns a single group of the authenticated user
    //
    //Future<GroupRead> getGroupsId(int id) async
    test('test getGroupsId', () async {
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

    // Create Group
    //
    // Creates a new group for the authenticated user
    //
    //Future<GroupRead> postGroups({ GroupStore groupStore }) async
    test('test postGroups', () async {
      // TODO
    });

    // Add 2FA accounts to a group
    //
    // Adds a list of 2FA accounts to a group of the authenticated user. An account previously assigned to another group will be removed from its former group. The 2FA accounts must be owned by the authenticated user.
    //
    //Future<GroupRead> postGroupsIdAssign(int id, { PostGroupsIdAssignRequest postGroupsIdAssignRequest }) async
    test('test postGroupsIdAssign', () async {
      // TODO
    });

    // Update group
    //
    // Updates a group of the authenticated user
    //
    //Future<GroupRead> putGroupsId(int id, { GroupStore groupStore }) async
    test('test putGroupsId', () async {
      // TODO
    });

  });
}
