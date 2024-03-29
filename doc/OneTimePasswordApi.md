# openapi.api.OneTimePasswordApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTwofaccountsIdOtp**](OneTimePasswordApi.md#gettwofaccountsidotp) | **GET** /api/v1/twofaccounts/{id}/otp | Get a One-Time password
[**postTwofaccountsOtp**](OneTimePasswordApi.md#posttwofaccountsotp) | **POST** /api/v1/twofaccounts/otp | Get a One-Time password


# **getTwofaccountsIdOtp**
> Otp getTwofaccountsIdOtp(id)

Get a One-Time password

Returns a fresh One-Time Password for the 2FA account of the authenticated user matching the specified ID

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OneTimePasswordApi();
final id = 1; // int | The ID of the resource

try {
    final result = api_instance.getTwofaccountsIdOtp(id);
    print(result);
} catch (e) {
    print('Exception when calling OneTimePasswordApi->getTwofaccountsIdOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

[**Otp**](Otp.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTwofaccountsOtp**
> Otp postTwofaccountsOtp(postTwofaccountsRequest)

Get a One-Time password

Returns a fresh One-Time password with related parameters for account defined by the provided data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OneTimePasswordApi();
final postTwofaccountsRequest = PostTwofaccountsRequest(); // PostTwofaccountsRequest | This endpoint accepts 2 different body schemas to generate a One-Time Password: - A JSON object with all properties to define a 2FA account - An otpauth URI

try {
    final result = api_instance.postTwofaccountsOtp(postTwofaccountsRequest);
    print(result);
} catch (e) {
    print('Exception when calling OneTimePasswordApi->postTwofaccountsOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postTwofaccountsRequest** | [**PostTwofaccountsRequest**](PostTwofaccountsRequest.md)| This endpoint accepts 2 different body schemas to generate a One-Time Password: - A JSON object with all properties to define a 2FA account - An otpauth URI | [optional] 

### Return type

[**Otp**](Otp.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

