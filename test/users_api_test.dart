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


/// tests for UsersApi
void main() {
  // final instance = UsersApi();

  group('tests for UsersApi', () {
    // Delete user
    //
    // Deletes a registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future deleteUsersId(int id) async
    test('test deleteUsersId', () async {
      // TODO
    });

    // Revoke user's webauthn credentials
    //
    // Revokes all webauthn credentials of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future deleteUsersIdCredentials(int id) async
    test('test deleteUsersIdCredentials', () async {
      // TODO
    });

    // Revoke user's personal access tokens
    //
    // Revokes all personal access tokens of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future deleteUsersIdPats(int id) async
    test('test deleteUsersIdPats', () async {
      // TODO
    });

    // Get all registered users
    //
    // Find all registered users.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future<List<UserManagerRead>> getUsers() async
    test('test getUsers', () async {
      // TODO
    });

    // Find user by ID
    //
    // Returns a single registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future<UserManagerRead> getUsersId(int id) async
    test('test getUsersId', () async {
      // TODO
    });

    // Reset user password
    //
    // Resets a user password. The user's password will be reset to a new, randomly generated password. The user will then receive an email prompting him to change its password.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future<UserManagerRead> patchUsersIdPasswordReset(int id) async
    test('test patchUsersIdPasswordReset', () async {
      // TODO
    });

    // Promote user as administrator
    //
    // Grants (or denies) administrator permissions to a user.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future<UserManagerRead> patchUsersIdPromote(int id, { PatchUsersIdPromoteRequest patchUsersIdPromoteRequest }) async
    test('test patchUsersIdPromote', () async {
      // TODO
    });

    // Create user
    //
    // Registers a new user.  `/users` endpoints are restricted to user with an `Administrator` role.
    //
    //Future<UserManagerRead> postUsers({ UserStore userStore }) async
    test('test postUsers', () async {
      // TODO
    });

  });
}
