# openapi.api.UserPreferenceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserPreferences**](UserPreferenceApi.md#getuserpreferences) | **GET** /api/v1/user/preferences | Get all user preferences
[**getUserPreferencesName**](UserPreferenceApi.md#getuserpreferencesname) | **GET** /api/v1/user/preferences/{name} | Find user preference by name
[**putUserPreferencesName**](UserPreferenceApi.md#putuserpreferencesname) | **PUT** /api/v1/user/preferences/{name} | Update user preference


# **getUserPreferences**
> List<UserPreference> getUserPreferences()

Get all user preferences

List all preferences of the authenticated user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserPreferenceApi();

try {
    final result = api_instance.getUserPreferences();
    print(result);
} catch (e) {
    print('Exception when calling UserPreferenceApi->getUserPreferences: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserPreference>**](UserPreference.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPreferencesName**
> UserPreference getUserPreferencesName(name)

Find user preference by name

Returns a single preference of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserPreferenceApi();
final name = displayMode; // String | Name of the resource

try {
    final result = api_instance.getUserPreferencesName(name);
    print(result);
} catch (e) {
    print('Exception when calling UserPreferenceApi->getUserPreferencesName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the resource | 

### Return type

[**UserPreference**](UserPreference.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putUserPreferencesName**
> UserPreference putUserPreferencesName(name, putUserPreferencesNameRequest)

Update user preference

Updates a preference of the authenticated user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserPreferenceApi();
final name = displayMode; // String | Name of the resource
final putUserPreferencesNameRequest = PutUserPreferencesNameRequest(); // PutUserPreferencesNameRequest | 

try {
    final result = api_instance.putUserPreferencesName(name, putUserPreferencesNameRequest);
    print(result);
} catch (e) {
    print('Exception when calling UserPreferenceApi->putUserPreferencesName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the resource | 
 **putUserPreferencesNameRequest** | [**PutUserPreferencesNameRequest**](PutUserPreferencesNameRequest.md)|  | [optional] 

### Return type

[**UserPreference**](UserPreference.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

