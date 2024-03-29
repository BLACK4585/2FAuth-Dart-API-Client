# openapi.api.UsersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUsersId**](UsersApi.md#deleteusersid) | **DELETE** /api/v1/users/{id} | Delete user
[**deleteUsersIdCredentials**](UsersApi.md#deleteusersidcredentials) | **DELETE** /api/v1/users/{id}/credentials | Revoke user's webauthn credentials
[**deleteUsersIdPats**](UsersApi.md#deleteusersidpats) | **DELETE** /api/v1/users/{id}/pats | Revoke user's personal access tokens
[**getUsers**](UsersApi.md#getusers) | **GET** /api/v1/users | Get all registered users
[**getUsersId**](UsersApi.md#getusersid) | **GET** /api/v1/users/{id} | Find user by ID
[**patchUsersIdPasswordReset**](UsersApi.md#patchusersidpasswordreset) | **PATCH** /api/v1/users/{id}/password/reset | Reset user password
[**patchUsersIdPromote**](UsersApi.md#patchusersidpromote) | **PATCH** /api/v1/users/{id}/promote | Promote user as administrator
[**postUsers**](UsersApi.md#postusers) | **POST** /api/v1/users | Create user


# **deleteUsersId**
> deleteUsersId(id)

Delete user

Deletes a registered user.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource

try {
    api_instance.deleteUsersId(id);
} catch (e) {
    print('Exception when calling UsersApi->deleteUsersId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsersIdCredentials**
> deleteUsersIdCredentials(id)

Revoke user's webauthn credentials

Revokes all webauthn credentials of a user.   `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource

try {
    api_instance.deleteUsersIdCredentials(id);
} catch (e) {
    print('Exception when calling UsersApi->deleteUsersIdCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsersIdPats**
> deleteUsersIdPats(id)

Revoke user's personal access tokens

Revokes all personal access tokens of a user.   `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource

try {
    api_instance.deleteUsersIdPats(id);
} catch (e) {
    print('Exception when calling UsersApi->deleteUsersIdPats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> List<UserManagerRead> getUsers()

Get all registered users

Find all registered users.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();

try {
    final result = api_instance.getUsers();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UserManagerRead>**](UserManagerRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersId**
> UserManagerRead getUsersId(id)

Find user by ID

Returns a single registered user.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource

try {
    final result = api_instance.getUsersId(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsersId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

[**UserManagerRead**](UserManagerRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUsersIdPasswordReset**
> UserManagerRead patchUsersIdPasswordReset(id)

Reset user password

Resets a user password. The user's password will be reset to a new, randomly generated password. The user will then receive an email prompting him to change its password.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource

try {
    final result = api_instance.patchUsersIdPasswordReset(id);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->patchUsersIdPasswordReset: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

[**UserManagerRead**](UserManagerRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUsersIdPromote**
> UserManagerRead patchUsersIdPromote(id, patchUsersIdPromoteRequest)

Promote user as administrator

Grants (or denies) administrator permissions to a user.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final id = 1; // int | The ID of the resource
final patchUsersIdPromoteRequest = PatchUsersIdPromoteRequest(); // PatchUsersIdPromoteRequest | 

try {
    final result = api_instance.patchUsersIdPromote(id, patchUsersIdPromoteRequest);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->patchUsersIdPromote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 
 **patchUsersIdPromoteRequest** | [**PatchUsersIdPromoteRequest**](PatchUsersIdPromoteRequest.md)|  | [optional] 

### Return type

[**UserManagerRead**](UserManagerRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsers**
> UserManagerRead postUsers(userStore)

Create user

Registers a new user.  `/users` endpoints are restricted to user with an `Administrator` role.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UsersApi();
final userStore = UserStore(); // UserStore | 

try {
    final result = api_instance.postUsers(userStore);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->postUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userStore** | [**UserStore**](UserStore.md)|  | [optional] 

### Return type

[**UserManagerRead**](UserManagerRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

