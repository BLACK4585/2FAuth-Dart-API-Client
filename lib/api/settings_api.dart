//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SettingsApi {
  SettingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete custom setting
  ///
  /// Deletes a custom application setting.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<Response> deleteSettingsNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/settings/{name}'
      .replaceAll('{name}', name);

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

  /// Delete custom setting
  ///
  /// Deletes a custom application setting.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<void> deleteSettingsName(String name,) async {
    final response = await deleteSettingsNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all settings
  ///
  /// List all application settings. This includes 2FAuth native settings and possible additional admin-defined settings.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/settings';

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

  /// Get all settings
  ///
  /// List all application settings. This includes 2FAuth native settings and possible additional admin-defined settings.  Settings endpoints are restricted to user with an `Administrator` role.
  Future<List<Setting>?> getSettings() async {
    final response = await getSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Setting>') as List)
        .cast<Setting>()
        .toList(growable: false);

    }
    return null;
  }

  /// Find setting by name
  ///
  /// Returns a single application setting, whether it is a native 2FAuth setting or a custom setting.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<Response> getSettingsNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/settings/{name}'
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

  /// Find setting by name
  ///
  /// Returns a single application setting, whether it is a native 2FAuth setting or a custom setting.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  Future<Setting?> getSettingsName(String name,) async {
    final response = await getSettingsNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Setting',) as Setting;
    
    }
    return null;
  }

  /// Create custom setting
  ///
  /// Creates a new custom application setting. You are free to use this endpoint to store any data you need to administrate your own app.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Setting] setting:
  ///   
  Future<Response> postSettingsWithHttpInfo({ Setting? setting, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/settings';

    // ignore: prefer_final_locals
    Object? postBody = setting;

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

  /// Create custom setting
  ///
  /// Creates a new custom application setting. You are free to use this endpoint to store any data you need to administrate your own app.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [Setting] setting:
  ///   
  Future<Setting?> postSettings({ Setting? setting, }) async {
    final response = await postSettingsWithHttpInfo( setting: setting, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Setting',) as Setting;
    
    }
    return null;
  }

  /// Update setting
  ///
  /// Updates an application setting, whether it is a native 2FAuth setting or a custom setting. Will create the setting if it does not exist.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  ///
  /// * [PutSettingsNameRequest] putSettingsNameRequest:
  Future<Response> putSettingsNameWithHttpInfo(String name, { PutSettingsNameRequest? putSettingsNameRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/settings/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = putSettingsNameRequest;

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

  /// Update setting
  ///
  /// Updates an application setting, whether it is a native 2FAuth setting or a custom setting. Will create the setting if it does not exist.  Settings endpoints are restricted to user with an `Administrator` role.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name of the resource
  ///
  /// * [PutSettingsNameRequest] putSettingsNameRequest:
  Future<Setting?> putSettingsName(String name, { PutSettingsNameRequest? putSettingsNameRequest, }) async {
    final response = await putSettingsNameWithHttpInfo(name,  putSettingsNameRequest: putSettingsNameRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Setting',) as Setting;
    
    }
    return null;
  }
}
