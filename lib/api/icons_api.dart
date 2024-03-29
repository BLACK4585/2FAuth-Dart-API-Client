//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IconsApi {
  IconsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete an icon
  ///
  /// Deletes an icon from the server
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filename (required):
  ///   Filename (with extension) of the icon file to delete from the server
  Future<Response> deleteIconsFilenameWithHttpInfo(String filename,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/icons/{filename}'
      .replaceAll('{filename}', filename);

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

  /// Delete an icon
  ///
  /// Deletes an icon from the server
  ///
  /// Parameters:
  ///
  /// * [String] filename (required):
  ///   Filename (with extension) of the icon file to delete from the server
  Future<void> deleteIconsFilename(String filename,) async {
    final response = await deleteIconsFilenameWithHttpInfo(filename,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Upload an icon
  ///
  /// Use this endpoint to upload and store an icon (an image file: jpeg, png, bmp, gif, svg, or webp) on the server
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] icon (required):
  ///   An image file
  Future<Response> postIconsWithHttpInfo(MultipartFile icon,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/icons';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (icon != null) {
      hasFields = true;
      mp.fields[r'icon'] = icon.field;
      mp.files.add(icon);
    }
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

  /// Upload an icon
  ///
  /// Use this endpoint to upload and store an icon (an image file: jpeg, png, bmp, gif, svg, or webp) on the server
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] icon (required):
  ///   An image file
  Future<PostIcons201Response?> postIcons(MultipartFile icon,) async {
    final response = await postIconsWithHttpInfo(icon,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostIcons201Response',) as PostIcons201Response;
    
    }
    return null;
  }
}
