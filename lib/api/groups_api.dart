//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupsApi {
  GroupsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete group
  ///
  /// Deletes a group of the authenticated user. This will not delete any assigned 2FA accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> deleteGroupsIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}'
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

  /// Delete group
  ///
  /// Deletes a group of the authenticated user. This will not delete any assigned 2FA accounts.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<void> deleteGroupsId(int id,) async {
    final response = await deleteGroupsIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all groups
  ///
  /// Find all groups of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getGroupsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups';

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

  /// Get all groups
  ///
  /// Find all groups of the authenticated user
  Future<List<GroupRead>?> getGroups() async {
    final response = await getGroupsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GroupRead>') as List)
        .cast<GroupRead>()
        .toList(growable: false);

    }
    return null;
  }

  /// Find group by ID
  ///
  /// Returns a single group of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> getGroupsIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}'
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

  /// Find group by ID
  ///
  /// Returns a single group of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<GroupRead?> getGroupsId(int id,) async {
    final response = await getGroupsIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupRead',) as GroupRead;
    
    }
    return null;
  }

  /// Get all 2FA accounts of a group
  ///
  /// Finds all existing 2FA accounts assigned to a group of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  Future<Response> getGroupsIdTwofaccountsWithHttpInfo({ bool? withSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}/twofaccounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withSecret != null) {
      queryParams.addAll(_queryParams('', 'withSecret', withSecret));
    }

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

  /// Get all 2FA accounts of a group
  ///
  /// Finds all existing 2FA accounts assigned to a group of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  Future<List<Model2FAccountRead>?> getGroupsIdTwofaccounts({ bool? withSecret, }) async {
    final response = await getGroupsIdTwofaccountsWithHttpInfo( withSecret: withSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Model2FAccountRead>') as List)
        .cast<Model2FAccountRead>()
        .toList(growable: false);

    }
    return null;
  }

  /// Create Group
  ///
  /// Creates a new group for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupStore] groupStore:
  Future<Response> postGroupsWithHttpInfo({ GroupStore? groupStore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups';

    // ignore: prefer_final_locals
    Object? postBody = groupStore;

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

  /// Create Group
  ///
  /// Creates a new group for the authenticated user
  ///
  /// Parameters:
  ///
  /// * [GroupStore] groupStore:
  Future<GroupRead?> postGroups({ GroupStore? groupStore, }) async {
    final response = await postGroupsWithHttpInfo( groupStore: groupStore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupRead',) as GroupRead;
    
    }
    return null;
  }

  /// Add 2FA accounts to a group
  ///
  /// Adds a list of 2FA accounts to a group of the authenticated user. An account previously assigned to another group will be removed from its former group. The 2FA accounts must be owned by the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [PostGroupsIdAssignRequest] postGroupsIdAssignRequest:
  Future<Response> postGroupsIdAssignWithHttpInfo(int id, { PostGroupsIdAssignRequest? postGroupsIdAssignRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}/assign'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = postGroupsIdAssignRequest;

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

  /// Add 2FA accounts to a group
  ///
  /// Adds a list of 2FA accounts to a group of the authenticated user. An account previously assigned to another group will be removed from its former group. The 2FA accounts must be owned by the authenticated user.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [PostGroupsIdAssignRequest] postGroupsIdAssignRequest:
  Future<GroupRead?> postGroupsIdAssign(int id, { PostGroupsIdAssignRequest? postGroupsIdAssignRequest, }) async {
    final response = await postGroupsIdAssignWithHttpInfo(id,  postGroupsIdAssignRequest: postGroupsIdAssignRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupRead',) as GroupRead;
    
    }
    return null;
  }

  /// Update group
  ///
  /// Updates a group of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [GroupStore] groupStore:
  Future<Response> putGroupsIdWithHttpInfo(int id, { GroupStore? groupStore, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/groups/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = groupStore;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update group
  ///
  /// Updates a group of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [GroupStore] groupStore:
  Future<GroupRead?> putGroupsId(int id, { GroupStore? groupStore, }) async {
    final response = await putGroupsIdWithHttpInfo(id,  groupStore: groupStore, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupRead',) as GroupRead;
    
    }
    return null;
  }
}
