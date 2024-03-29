# openapi.api.SettingsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSettingsName**](SettingsApi.md#deletesettingsname) | **DELETE** /api/v1/settings/{name} | Delete custom setting
[**getSettings**](SettingsApi.md#getsettings) | **GET** /api/v1/settings | Get all settings
[**getSettingsName**](SettingsApi.md#getsettingsname) | **GET** /api/v1/settings/{name} | Find setting by name
[**postSettings**](SettingsApi.md#postsettings) | **POST** /api/v1/settings | Create custom setting
[**putSettingsName**](SettingsApi.md#putsettingsname) | **PUT** /api/v1/settings/{name} | Update setting


# **deleteSettingsName**
> deleteSettingsName(name)

Delete custom setting

Deletes a custom application setting.  Settings endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SettingsApi();
final name = displayMode; // String | Name of the resource

try {
    api_instance.deleteSettingsName(name);
} catch (e) {
    print('Exception when calling SettingsApi->deleteSettingsName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the resource | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSettings**
> List<Setting> getSettings()

Get all settings

List all application settings. This includes 2FAuth native settings and possible additional admin-defined settings.  Settings endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SettingsApi();

try {
    final result = api_instance.getSettings();
    print(result);
} catch (e) {
    print('Exception when calling SettingsApi->getSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Setting>**](Setting.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSettingsName**
> Setting getSettingsName(name)

Find setting by name

Returns a single application setting, whether it is a native 2FAuth setting or a custom setting.  Settings endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SettingsApi();
final name = displayMode; // String | Name of the resource

try {
    final result = api_instance.getSettingsName(name);
    print(result);
} catch (e) {
    print('Exception when calling SettingsApi->getSettingsName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the resource | 

### Return type

[**Setting**](Setting.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postSettings**
> Setting postSettings(setting)

Create custom setting

Creates a new custom application setting. You are free to use this endpoint to store any data you need to administrate your own app.  Settings endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SettingsApi();
final setting = Setting(); // Setting | 

try {
    final result = api_instance.postSettings(setting);
    print(result);
} catch (e) {
    print('Exception when calling SettingsApi->postSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting** | [**Setting**](Setting.md)|  | [optional] 

### Return type

[**Setting**](Setting.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putSettingsName**
> Setting putSettingsName(name, putSettingsNameRequest)

Update setting

Updates an application setting, whether it is a native 2FAuth setting or a custom setting. Will create the setting if it does not exist.  Settings endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SettingsApi();
final name = displayMode; // String | Name of the resource
final putSettingsNameRequest = PutSettingsNameRequest(); // PutSettingsNameRequest | 

try {
    final result = api_instance.putSettingsName(name, putSettingsNameRequest);
    print(result);
} catch (e) {
    print('Exception when calling SettingsApi->putSettingsName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the resource | 
 **putSettingsNameRequest** | [**PutSettingsNameRequest**](PutSettingsNameRequest.md)|  | [optional] 

### Return type

[**Setting**](Setting.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

