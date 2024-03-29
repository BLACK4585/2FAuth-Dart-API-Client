//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class QrcodeApi {
  QrcodeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Encode a 2FA account in a QR code
  ///
  /// Returns a QR code that represents a 2FA account owned by the authenticated user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<Response> getTwofaccountsIdQrcodeWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/twofaccounts/{id}/qrcode'
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

  /// Encode a 2FA account in a QR code
  ///
  /// Returns a QR code that represents a 2FA account owned by the authenticated user
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The ID of the resource
  Future<GetTwofaccountsIdQrcode200Response?> getTwofaccountsIdQrcode(int id,) async {
    final response = await getTwofaccountsIdQrcodeWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetTwofaccountsIdQrcode200Response',) as GetTwofaccountsIdQrcode200Response;
    
    }
    return null;
  }

  /// Decode a QR code
  ///
  /// Use this endpoint to decode a QR code (an image file: jpeg, png, bmp, gif, svg, or webp). The QR code is expected to be a 2FA resource but any QR code will be decoded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] qrcode (required):
  ///   A QR code image file
  Future<Response> postQrcodeDecodeWithHttpInfo(MultipartFile qrcode,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/qrcode/decode';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'qrcode'] = qrcode.field;
    mp.files.add(qrcode);
      if (hasFields) {
      postBody = mp;
    }

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

  /// Decode a QR code
  ///
  /// Use this endpoint to decode a QR code (an image file: jpeg, png, bmp, gif, svg, or webp). The QR code is expected to be a 2FA resource but any QR code will be decoded.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] qrcode (required):
  ///   A QR code image file
  Future<PostQrcodeDecode200Response?> postQrcodeDecode(MultipartFile qrcode,) async {
    final response = await postQrcodeDecodeWithHttpInfo(qrcode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostQrcodeDecode200Response',) as PostQrcodeDecode200Response;
    
    }
    return null;
  }
}
