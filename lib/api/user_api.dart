//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get user
  ///
  /// Use this endpoint to get informations about the authenticated user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user';

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

  /// Get user
  ///
  /// Use this endpoint to get informations about the authenticated user.
  Future<UserRead?> getUser() async {
    final response = await getUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserRead',) as UserRead;
    
    }
    return null;
  }

  /// Get user name
  ///
  /// This endpoint is deprecated since API v1.1.0  Use this endpoint to check if a registered user exists by getting its name, null otherwise.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserNameWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/user/name';

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

  /// Get user name
  ///
  /// This endpoint is deprecated since API v1.1.0  Use this endpoint to check if a registered user exists by getting its name, null otherwise.
  Future<GetUserName200Response?> getUserName() async {
    final response = await getUserNameWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetUserName200Response',) as GetUserName200Response;
    
    }
    return null;
  }
}
