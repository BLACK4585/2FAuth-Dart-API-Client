//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TwofaccountsApi {
  TwofaccountsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Mass delete 2FA accounts
  ///
  /// Mass deletes 2FA accounts of the authenticated user matching the IDs passed as query parameter.  A `204 — No Content` response will be returned even if some resources no longer exist before delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<Response> deleteTwofaccountsWithHttpInfo(String ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

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

  /// Mass delete 2FA accounts
  ///
  /// Mass deletes 2FA accounts of the authenticated user matching the IDs passed as query parameter.  A `204 — No Content` response will be returned even if some resources no longer exist before delete.
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<void> deleteTwofaccounts(String ids,) async {
    final response = await deleteTwofaccountsWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete 2FA account
  ///
  /// Deletes a 2FA account of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> deleteTwofaccountsIdWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/{id}'
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

  /// Delete 2FA account
  ///
  /// Deletes a 2FA account of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<void> deleteTwofaccountsId(int id,) async {
    final response = await deleteTwofaccountsIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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

  /// Get all 2FA accounts
  ///
  /// Find all 2FA accounts of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  ///
  /// * [String] ids:
  ///   Comma-separated list of ids to filter returned 2FA accounts
  ///
  /// * [bool] withOtp:
  ///   Set to true (or 1) to append an OTP object to the returned 2FA accounts of type TOTP
  Future<Response> getTwofaccountsWithHttpInfo({ bool? withSecret, String? ids, bool? withOtp, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withSecret != null) {
      queryParams.addAll(_queryParams('', 'withSecret', withSecret));
    }
    if (ids != null) {
      queryParams.addAll(_queryParams('', 'ids', ids));
    }
    if (withOtp != null) {
      queryParams.addAll(_queryParams('', 'withOtp', withOtp));
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

  /// Get all 2FA accounts
  ///
  /// Find all 2FA accounts of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  ///
  /// * [String] ids:
  ///   Comma-separated list of ids to filter returned 2FA accounts
  ///
  /// * [bool] withOtp:
  ///   Set to true (or 1) to append an OTP object to the returned 2FA accounts of type TOTP
  Future<List<Model2FAccountRead>?> getTwofaccounts({ bool? withSecret, String? ids, bool? withOtp, }) async {
    final response = await getTwofaccountsWithHttpInfo( withSecret: withSecret, ids: ids, withOtp: withOtp, );
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

  /// Export 2FA accounts
  ///
  /// Exports a list of 2FA accounts of the authenticated user to a json file
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<Response> getTwofaccountsExportWithHttpInfo(String ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/export';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

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

  /// Export 2FA accounts
  ///
  /// Exports a list of 2FA accounts of the authenticated user to a json file
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<GetTwofaccountsExport200Response?> getTwofaccountsExport(String ids,) async {
    final response = await getTwofaccountsExportWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetTwofaccountsExport200Response',) as GetTwofaccountsExport200Response;
    
    }
    return null;
  }

  /// Find 2FA account by ID
  ///
  /// Returns a single 2FA account of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  Future<Response> getTwofaccountsIdWithHttpInfo({ bool? withSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/{id}';

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

  /// Find 2FA account by ID
  ///
  /// Returns a single 2FA account of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  Future<Model2FAccountRead?> getTwofaccountsId({ bool? withSecret, }) async {
    final response = await getTwofaccountsIdWithHttpInfo( withSecret: withSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Model2FAccountRead',) as Model2FAccountRead;
    
    }
    return null;
  }

  /// Withdraw accounts from groups
  ///
  /// Removes a list of 2FA accounts of the authenticated user from any group
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<Response> patchTwofaccountsWithdrawWithHttpInfo(String ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/withdraw';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

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

  /// Withdraw accounts from groups
  ///
  /// Removes a list of 2FA accounts of the authenticated user from any group
  ///
  /// Parameters:
  ///
  /// * [String] ids (required):
  ///   A comma-separated list of IDs. A maximum of 100 IDs may be provided
  Future<Object?> patchTwofaccountsWithdraw(String ids,) async {
    final response = await patchTwofaccountsWithdrawWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Create 2FA account
  ///
  /// Creates a new 2FA account for the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsRequest] postTwofaccountsRequest:
  ///   This endpoint accepts 2 different body schemas to create a new 2FA account: - A full JSON object with some properties - An URI based on the otpauth format
  Future<Response> postTwofaccountsWithHttpInfo({ PostTwofaccountsRequest? postTwofaccountsRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts';

    // ignore: prefer_final_locals
    Object? postBody = postTwofaccountsRequest;

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

  /// Create 2FA account
  ///
  /// Creates a new 2FA account for the authenticated user
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsRequest] postTwofaccountsRequest:
  ///   This endpoint accepts 2 different body schemas to create a new 2FA account: - A full JSON object with some properties - An URI based on the otpauth format
  Future<Model2FAccountRead?> postTwofaccounts({ PostTwofaccountsRequest? postTwofaccountsRequest, }) async {
    final response = await postTwofaccountsWithHttpInfo( postTwofaccountsRequest: postTwofaccountsRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Model2FAccountRead',) as Model2FAccountRead;
    
    }
    return null;
  }

  /// Convert a migration resource
  ///
  /// Use this endpoint to convert exported 2FAs from another 2FA app to a list of 2FA resources you can POST using the API to create new 2FA accounts.  > This endpoint does not store anything in database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  ///
  /// * [PostTwofaccountsMigrationRequest] postTwofaccountsMigrationRequest:
  ///   This endpoint accepts 2 different body schemas: - A JSON object which contain a migration payload. Typically the content of an export file or the decoded content of a QR code. - A multi-part/form-data to submit an export file directly
  Future<Response> postTwofaccountsMigrationWithHttpInfo({ bool? withSecret, PostTwofaccountsMigrationRequest? postTwofaccountsMigrationRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/migration';

    // ignore: prefer_final_locals
    Object? postBody = postTwofaccountsMigrationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (withSecret != null) {
      queryParams.addAll(_queryParams('', 'withSecret', withSecret));
    }

    const contentTypes = <String>['application/json', 'multipart/form-data'];


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

  /// Convert a migration resource
  ///
  /// Use this endpoint to convert exported 2FAs from another 2FA app to a list of 2FA resources you can POST using the API to create new 2FA accounts.  > This endpoint does not store anything in database.
  ///
  /// Parameters:
  ///
  /// * [bool] withSecret:
  ///   Set to true (or 1) to append the Secret property to the returned 2FA account
  ///
  /// * [PostTwofaccountsMigrationRequest] postTwofaccountsMigrationRequest:
  ///   This endpoint accepts 2 different body schemas: - A JSON object which contain a migration payload. Typically the content of an export file or the decoded content of a QR code. - A multi-part/form-data to submit an export file directly
  Future<List<Model2FAccountMigrated>?> postTwofaccountsMigration({ bool? withSecret, PostTwofaccountsMigrationRequest? postTwofaccountsMigrationRequest, }) async {
    final response = await postTwofaccountsMigrationWithHttpInfo( withSecret: withSecret, postTwofaccountsMigrationRequest: postTwofaccountsMigrationRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Model2FAccountMigrated>') as List)
        .cast<Model2FAccountMigrated>()
        .toList(growable: false);

    }
    return null;
  }

  /// Preview 2FA account
  ///
  /// Use this endpoint to preview a 2FA account described by an otpauth URI. It works exactly as if you POSTed an URI to create a 2FA account except it does not save anything in database.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [OtpauthUri] otpauthUri:
  ///   
  Future<Response> postTwofaccountsPreviewWithHttpInfo({ OtpauthUri? otpauthUri, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/preview';

    // ignore: prefer_final_locals
    Object? postBody = otpauthUri;

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

  /// Preview 2FA account
  ///
  /// Use this endpoint to preview a 2FA account described by an otpauth URI. It works exactly as if you POSTed an URI to create a 2FA account except it does not save anything in database.
  ///
  /// Parameters:
  ///
  /// * [OtpauthUri] otpauthUri:
  ///   
  Future<Model2FAccountRead?> postTwofaccountsPreview({ OtpauthUri? otpauthUri, }) async {
    final response = await postTwofaccountsPreviewWithHttpInfo( otpauthUri: otpauthUri, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Model2FAccountRead',) as Model2FAccountRead;
    
    }
    return null;
  }

  /// Save order of the 2FA accounts collection
  ///
  /// Saves the order of the 2FA accounts of the authenticated user. This allows to always serve the 2FA accounts collection sorted in a user defined order.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsReorderRequest] postTwofaccountsReorderRequest:
  ///   
  Future<Response> postTwofaccountsReorderWithHttpInfo({ PostTwofaccountsReorderRequest? postTwofaccountsReorderRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/reorder';

    // ignore: prefer_final_locals
    Object? postBody = postTwofaccountsReorderRequest;

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

  /// Save order of the 2FA accounts collection
  ///
  /// Saves the order of the 2FA accounts of the authenticated user. This allows to always serve the 2FA accounts collection sorted in a user defined order.
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsReorderRequest] postTwofaccountsReorderRequest:
  ///   
  Future<Object?> postTwofaccountsReorder({ PostTwofaccountsReorderRequest? postTwofaccountsReorderRequest, }) async {
    final response = await postTwofaccountsReorderWithHttpInfo( postTwofaccountsReorderRequest: postTwofaccountsReorderRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Update 2FA account
  ///
  /// Updates a 2FA account of the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [Model2FAccountUpdate] model2FAccountUpdate:
  Future<Response> putTwofaccountsIdWithHttpInfo(int id, { Model2FAccountUpdate? model2FAccountUpdate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = model2FAccountUpdate;

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

  /// Update 2FA account
  ///
  /// Updates a 2FA account of the authenticated user
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  ///
  /// * [Model2FAccountUpdate] model2FAccountUpdate:
  Future<Model2FAccountRead?> putTwofaccountsId(int id, { Model2FAccountUpdate? model2FAccountUpdate, }) async {
    final response = await putTwofaccountsIdWithHttpInfo(id,  model2FAccountUpdate: model2FAccountUpdate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Model2FAccountRead',) as Model2FAccountRead;
    
    }
    return null;
  }
}
