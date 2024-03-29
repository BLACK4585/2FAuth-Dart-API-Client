//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UsersApi {
  UsersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete user
  ///
  /// Deletes a registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> deleteUsersIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete user
  ///
  /// Deletes a registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<void> deleteUsersId(int id,) async {
    final response = await deleteUsersIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke user's webauthn credentials
  ///
  /// Revokes all webauthn credentials of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> deleteUsersIdCredentialsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/credentials'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke user's webauthn credentials
  ///
  /// Revokes all webauthn credentials of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<void> deleteUsersIdCredentials(int id,) async {
    final response = await deleteUsersIdCredentialsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke user's personal access tokens
  ///
  /// Revokes all personal access tokens of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> deleteUsersIdPatsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/pats'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke user's personal access tokens
  ///
  /// Revokes all personal access tokens of a user.   `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<void> deleteUsersIdPats(int id,) async {
    final response = await deleteUsersIdPatsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all registered users
  ///
  /// Find all registered users.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all registered users
  ///
  /// Find all registered users.  `/users` endpoints are restricted to user with an `Administrator` role.
  Future<List<UserManagerRead>?> getUsers() async {
    final response = await getUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserManagerRead>') as List)
        .cast<UserManagerRead>()
        .toList(growable: false);

    }
    return null;
  }

  /// Find user by ID
  ///
  /// Returns a single registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> getUsersIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Find user by ID
  ///
  /// Returns a single registered user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<UserManagerRead?> getUsersId(int id,) async {
    final response = await getUsersIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserManagerRead',) as UserManagerRead;
    
    }
    return null;
  }

  /// Reset user password
  ///
  /// Resets a user password. The user's password will be reset to a new, randomly generated password. The user will then receive an email prompting him to change its password.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> patchUsersIdPasswordResetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/password/reset'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Reset user password
  ///
  /// Resets a user password. The user's password will be reset to a new, randomly generated password. The user will then receive an email prompting him to change its password.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<UserManagerRead?> patchUsersIdPasswordReset(int id,) async {
    final response = await patchUsersIdPasswordResetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserManagerRead',) as UserManagerRead;
    
    }
    return null;
  }

  /// Promote user as administrator
  ///
  /// Grants (or denies) administrator permissions to a user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [PatchUsersIdPromoteRequest] patchUsersIdPromoteRequest:
  ///   
  Future<Response> patchUsersIdPromoteWithHttpInfo(int id, { PatchUsersIdPromoteRequest? patchUsersIdPromoteRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users/{id}/promote'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = patchUsersIdPromoteRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Promote user as administrator
  ///
  /// Grants (or denies) administrator permissions to a user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [PatchUsersIdPromoteRequest] patchUsersIdPromoteRequest:
  ///   
  Future<UserManagerRead?> patchUsersIdPromote(int id, { PatchUsersIdPromoteRequest? patchUsersIdPromoteRequest, }) async {
    final response = await patchUsersIdPromoteWithHttpInfo(id,  patchUsersIdPromoteRequest: patchUsersIdPromoteRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserManagerRead',) as UserManagerRead;
    
    }
    return null;
  }

  /// Create user
  ///
  /// Registers a new user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserStore] userStore:
  Future<Response> postUsersWithHttpInfo({ UserStore? userStore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/users';

    // ignore: prefer_final_locals
    Object? postBody = userStore;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create user
  ///
  /// Registers a new user.  `/users` endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [UserStore] userStore:
  Future<UserManagerRead?> postUsers({ UserStore? userStore, }) async {
    final response = await postUsersWithHttpInfo( userStore: userStore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserManagerRead',) as UserManagerRead;
    
    }
    return null;
  }
}
