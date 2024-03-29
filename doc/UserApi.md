# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUser**](UserApi.md#getuser) | **GET** /api/v1/user | Get user
[**getUserName**](UserApi.md#getusername) | **GET** /api/v1/user/name | Get user name


# **getUser**
> UserRead getUser()

Get user

Use this endpoint to get informations about the authenticated user.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getUser();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserRead**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserName**
> GetUserName200Response getUserName()

Get user name

This endpoint is deprecated since API v1.1.0  Use this endpoint to check if a registered user exists by getting its name, null otherwise.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UserApi();

try {
    final result = api_instance.getUserName();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getUserName: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserName200Response**](GetUserName200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

