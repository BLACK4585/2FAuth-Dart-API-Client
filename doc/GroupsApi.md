# openapi.api.GroupsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGroupsId**](GroupsApi.md#deletegroupsid) | **DELETE** /api/v1/groups/{id} | Delete group
[**getGroups**](GroupsApi.md#getgroups) | **GET** /api/v1/groups | Get all groups
[**getGroupsId**](GroupsApi.md#getgroupsid) | **GET** /api/v1/groups/{id} | Find group by ID
[**getGroupsIdTwofaccounts**](GroupsApi.md#getgroupsidtwofaccounts) | **GET** /api/v1/groups/{id}/twofaccounts | Get all 2FA accounts of a group
[**postGroups**](GroupsApi.md#postgroups) | **POST** /api/v1/groups | Create Group
[**postGroupsIdAssign**](GroupsApi.md#postgroupsidassign) | **POST** /api/v1/groups/{id}/assign | Add 2FA accounts to a group
[**putGroupsId**](GroupsApi.md#putgroupsid) | **PUT** /api/v1/groups/{id} | Update group


# **deleteGroupsId**
> deleteGroupsId(id)

Delete group

Deletes a group of the authenticated user. This will not delete any assigned 2FA accounts.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final id = 1; // int | The ID of the resource

try {
    api_instance.deleteGroupsId(id);
} catch (e) {
    print('Exception when calling GroupsApi->deleteGroupsId: $e\n');
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

# **getGroups**
> List<GroupRead> getGroups()

Get all groups

Find all groups of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();

try {
    final result = api_instance.getGroups();
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroups: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<GroupRead>**](GroupRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsId**
> GroupRead getGroupsId(id)

Find group by ID

Returns a single group of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final id = 1; // int | The ID of the resource

try {
    final result = api_instance.getGroupsId(id);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 

### Return type

[**GroupRead**](GroupRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsIdTwofaccounts**
> List<Model2FAccountRead> getGroupsIdTwofaccounts(withSecret)

Get all 2FA accounts of a group

Finds all existing 2FA accounts assigned to a group of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final withSecret = true; // bool | Set to true (or 1) to append the Secret property to the returned 2FA account

try {
    final result = api_instance.getGroupsIdTwofaccounts(withSecret);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->getGroupsIdTwofaccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withSecret** | **bool**| Set to true (or 1) to append the Secret property to the returned 2FA account | [optional] 

### Return type

[**List<Model2FAccountRead>**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGroups**
> GroupRead postGroups(groupStore)

Create Group

Creates a new group for the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final groupStore = GroupStore(); // GroupStore | 

try {
    final result = api_instance.postGroups(groupStore);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->postGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupStore** | [**GroupStore**](GroupStore.md)|  | [optional] 

### Return type

[**GroupRead**](GroupRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postGroupsIdAssign**
> GroupRead postGroupsIdAssign(id, postGroupsIdAssignRequest)

Add 2FA accounts to a group

Adds a list of 2FA accounts to a group of the authenticated user. An account previously assigned to another group will be removed from its former group. The 2FA accounts must be owned by the authenticated user.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final id = 1; // int | The ID of the resource
final postGroupsIdAssignRequest = PostGroupsIdAssignRequest(); // PostGroupsIdAssignRequest | 

try {
    final result = api_instance.postGroupsIdAssign(id, postGroupsIdAssignRequest);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->postGroupsIdAssign: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 
 **postGroupsIdAssignRequest** | [**PostGroupsIdAssignRequest**](PostGroupsIdAssignRequest.md)|  | [optional] 

### Return type

[**GroupRead**](GroupRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putGroupsId**
> GroupRead putGroupsId(id, groupStore)

Update group

Updates a group of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = GroupsApi();
final id = 1; // int | The ID of the resource
final groupStore = GroupStore(); // GroupStore | 

try {
    final result = api_instance.putGroupsId(id, groupStore);
    print(result);
} catch (e) {
    print('Exception when calling GroupsApi->putGroupsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 
 **groupStore** | [**GroupStore**](GroupStore.md)|  | [optional] 

### Return type

[**GroupRead**](GroupRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

