# openapi.api.IconsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteIconsFilename**](IconsApi.md#deleteiconsfilename) | **DELETE** /api/v1/icons/{filename} | Delete an icon
[**postIcons**](IconsApi.md#posticons) | **POST** /api/v1/icons | Upload an icon


# **deleteIconsFilename**
> deleteIconsFilename(filename)

Delete an icon

Deletes an icon from the server

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = IconsApi();
final filename = ZMlzmrPsrWSWVt4fZouFVrt2w38D0PnXiyZQvDcY.png; // String | Filename (with extension) of the icon file to delete from the server

try {
    api_instance.deleteIconsFilename(filename);
} catch (e) {
    print('Exception when calling IconsApi->deleteIconsFilename: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filename** | **String**| Filename (with extension) of the icon file to delete from the server | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postIcons**
> PostIcons201Response postIcons(icon)

Upload an icon

Use this endpoint to upload and store an icon (an image file: jpeg, png, bmp, gif, svg, or webp) on the server

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = IconsApi();
final icon = BINARY_DATA_HERE; // MultipartFile | An image file

try {
    final result = api_instance.postIcons(icon);
    print(result);
} catch (e) {
    print('Exception when calling IconsApi->postIcons: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icon** | **MultipartFile**| An image file | 

### Return type

[**PostIcons201Response**](PostIcons201Response.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

