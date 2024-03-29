//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OneTimePasswordApi {
  OneTimePasswordApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a One-Time password
  ///
  /// Returns a fresh One-Time Password for the 2FA account of the authenticated user matching the specified ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> getTwofaccountsIdOtpWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/{id}/otp'
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

  /// Get a One-Time password
  ///
  /// Returns a fresh One-Time Password for the 2FA account of the authenticated user matching the specified ID
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Otp?> getTwofaccountsIdOtp(int id,) async {
    final response = await getTwofaccountsIdOtpWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Otp',) as Otp;
    
    }
    return null;
  }

  /// Get a One-Time password
  ///
  /// Returns a fresh One-Time password with related parameters for account defined by the provided data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsRequest] postTwofaccountsRequest:
  ///   This endpoint accepts 2 different body schemas to generate a One-Time Password: - A JSON object with all properties to define a 2FA account - An otpauth URI
  Future<Response> postTwofaccountsOtpWithHttpInfo({ PostTwofaccountsRequest? postTwofaccountsRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/otp';

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

  /// Get a One-Time password
  ///
  /// Returns a fresh One-Time password with related parameters for account defined by the provided data
  ///
  /// Parameters:
  ///
  /// * [PostTwofaccountsRequest] postTwofaccountsRequest:
  ///   This endpoint accepts 2 different body schemas to generate a One-Time Password: - A JSON object with all properties to define a 2FA account - An otpauth URI
  Future<Otp?> postTwofaccountsOtp({ PostTwofaccountsRequest? postTwofaccountsRequest, }) async {
    final response = await postTwofaccountsOtpWithHttpInfo( postTwofaccountsRequest: postTwofaccountsRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Otp',) as Otp;
    
    }
    return null;
  }
}
