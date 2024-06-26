//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserPreferenceApi {
  UserPreferenceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all user preferences
  ///
  /// List all preferences of the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/preferences';

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

  /// Get all user preferences
  ///
  /// List all preferences of the authenticated user.
  Future<List<UserPreference>?> getUserPreferences() async {
    final response = await getUserPreferencesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserPreference>') as List)
        .cast<UserPreference>()
        .toList(growable: false);

    }
    return null;
  }

  /// Find user preference by name
  ///
  /// Returns a single preference of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<Response> getUserPreferencesNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/preferences/{name}'
      .replaceAll('{name}', name);

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

  /// Find user preference by name
  ///
  /// Returns a single preference of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<UserPreference?> getUserPreferencesName(String name,) async {
    final response = await getUserPreferencesNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPreference',) as UserPreference;
    
    }
    return null;
  }

  /// Update user preference
  ///
  /// Updates a preference of the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  ///
  /// * [PutUserPreferencesNameRequest] putUserPreferencesNameRequest:
  Future<Response> putUserPreferencesNameWithHttpInfo(String name, { PutUserPreferencesNameRequest? putUserPreferencesNameRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/preferences/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = putUserPreferencesNameRequest;

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

  /// Update user preference
  ///
  /// Updates a preference of the authenticated user.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  ///
  /// * [PutUserPreferencesNameRequest] putUserPreferencesNameRequest:
  Future<UserPreference?> putUserPreferencesName(String name, { PutUserPreferencesNameRequest? putUserPreferencesNameRequest, }) async {
    final response = await putUserPreferencesNameWithHttpInfo(name,  putUserPreferencesNameRequest: putUserPreferencesNameRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserPreference',) as UserPreference;
    
    }
    return null;
  }
}
