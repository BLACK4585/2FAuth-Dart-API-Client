# openapi.api.QrcodeApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTwofaccountsIdQrcode**](QrcodeApi.md#gettwofaccountsidqrcode) | **GET** /api/v1/twofaccounts/{id}/qrcode | Encode a 2FA account in a QR code
[**postQrcodeDecode**](QrcodeApi.md#postqrcodedecode) | **POST** /api/v1/qrcode/decode | Decode a QR code


# **getTwofaccountsIdQrcode**
> GetTwofaccountsIdQrcode200Response getTwofaccountsIdQrcode(id)

Encode a 2FA account in a QR code

Returns a QR code that represents a 2FA account owned by the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = QrcodeApi();
final id = 1; // int | The ID of the resource

try {
    final result = api_instance.getTwofaccountsIdQrcode(id);
    print(result);
} catch (e) {
    print('Exception when calling QrcodeApi->getTwofaccountsIdQrcode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

[**GetTwofaccountsIdQrcode200Response**](GetTwofaccountsIdQrcode200Response.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQrcodeDecode**
> PostQrcodeDecode200Response postQrcodeDecode(qrcode)

Decode a QR code

Use this endpoint to decode a QR code (an image file: jpeg, png, bmp, gif, svg, or webp). The QR code is expected to be a 2FA resource but any QR code will be decoded.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = QrcodeApi();
final qrcode = BINARY_DATA_HERE; // MultipartFile | A QR code image file

try {
    final result = api_instance.postQrcodeDecode(qrcode);
    print(result);
} catch (e) {
    print('Exception when calling QrcodeApi->postQrcodeDecode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qrcode** | **MultipartFile**| A QR code image file | 

### Return type

[**PostQrcodeDecode200Response**](PostQrcodeDecode200Response.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

