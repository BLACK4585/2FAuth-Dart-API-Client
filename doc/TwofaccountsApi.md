# openapi.api.TwofaccountsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://demo.2fauth.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTwofaccounts**](TwofaccountsApi.md#deletetwofaccounts) | **DELETE** /api/v1/twofaccounts | Mass delete 2FA accounts
[**deleteTwofaccountsId**](TwofaccountsApi.md#deletetwofaccountsid) | **DELETE** /api/v1/twofaccounts/{id} | Delete 2FA account
[**getGroupsIdTwofaccounts**](TwofaccountsApi.md#getgroupsidtwofaccounts) | **GET** /api/v1/groups/{id}/twofaccounts | Get all 2FA accounts of a group
[**getTwofaccounts**](TwofaccountsApi.md#gettwofaccounts) | **GET** /api/v1/twofaccounts | Get all 2FA accounts
[**getTwofaccountsExport**](TwofaccountsApi.md#gettwofaccountsexport) | **GET** /api/v1/twofaccounts/export | Export 2FA accounts
[**getTwofaccountsId**](TwofaccountsApi.md#gettwofaccountsid) | **GET** /api/v1/twofaccounts/{id} | Find 2FA account by ID
[**patchTwofaccountsWithdraw**](TwofaccountsApi.md#patchtwofaccountswithdraw) | **PATCH** /api/v1/twofaccounts/withdraw | Withdraw accounts from groups
[**postTwofaccounts**](TwofaccountsApi.md#posttwofaccounts) | **POST** /api/v1/twofaccounts | Create 2FA account
[**postTwofaccountsMigration**](TwofaccountsApi.md#posttwofaccountsmigration) | **POST** /api/v1/twofaccounts/migration | Convert a migration resource
[**postTwofaccountsPreview**](TwofaccountsApi.md#posttwofaccountspreview) | **POST** /api/v1/twofaccounts/preview | Preview 2FA account
[**postTwofaccountsReorder**](TwofaccountsApi.md#posttwofaccountsreorder) | **POST** /api/v1/twofaccounts/reorder | Save order of the 2FA accounts collection
[**putTwofaccountsId**](TwofaccountsApi.md#puttwofaccountsid) | **PUT** /api/v1/twofaccounts/{id} | Update 2FA account


# **deleteTwofaccounts**
> deleteTwofaccounts(ids)

Mass delete 2FA accounts

Mass deletes 2FA accounts of the authenticated user matching the IDs passed as query parameter.  A `204 — No Content` response will be returned even if some resources no longer exist before delete.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final ids = 1,5,18; // String | A comma-separated list of IDs. A maximum of 100 IDs may be provided

try {
    api_instance.deleteTwofaccounts(ids);
} catch (e) {
    print('Exception when calling TwofaccountsApi->deleteTwofaccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of IDs. A maximum of 100 IDs may be provided | 

### Return type

void (empty response body)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTwofaccountsId**
> deleteTwofaccountsId(id)

Delete 2FA account

Deletes a 2FA account of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final id = 1; // int | The ID of the resource

try {
    api_instance.deleteTwofaccountsId(id);
} catch (e) {
    print('Exception when calling TwofaccountsApi->deleteTwofaccountsId: $e\n');
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

final api_instance = TwofaccountsApi();
final withSecret = true; // bool | Set to true (or 1) to append the Secret property to the returned 2FA account

try {
    final result = api_instance.getGroupsIdTwofaccounts(withSecret);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->getGroupsIdTwofaccounts: $e\n');
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

# **getTwofaccounts**
> List<Model2FAccountRead> getTwofaccounts(withSecret, ids, withOtp)

Get all 2FA accounts

Find all 2FA accounts of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final withSecret = true; // bool | Set to true (or 1) to append the Secret property to the returned 2FA account
final ids = 1,20,9,456; // String | Comma-separated list of ids to filter returned 2FA accounts
final withOtp = true; // bool | Set to true (or 1) to append an OTP object to the returned 2FA accounts of type TOTP

try {
    final result = api_instance.getTwofaccounts(withSecret, ids, withOtp);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->getTwofaccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withSecret** | **bool**| Set to true (or 1) to append the Secret property to the returned 2FA account | [optional] 
 **ids** | **String**| Comma-separated list of ids to filter returned 2FA accounts | [optional] 
 **withOtp** | **bool**| Set to true (or 1) to append an OTP object to the returned 2FA accounts of type TOTP | [optional] 

### Return type

[**List<Model2FAccountRead>**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTwofaccountsExport**
> GetTwofaccountsExport200Response getTwofaccountsExport(ids)

Export 2FA accounts

Exports a list of 2FA accounts of the authenticated user to a json file

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final ids = 1,5,18; // String | A comma-separated list of IDs. A maximum of 100 IDs may be provided

try {
    final result = api_instance.getTwofaccountsExport(ids);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->getTwofaccountsExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of IDs. A maximum of 100 IDs may be provided | 

### Return type

[**GetTwofaccountsExport200Response**](GetTwofaccountsExport200Response.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTwofaccountsId**
> Model2FAccountRead getTwofaccountsId(withSecret)

Find 2FA account by ID

Returns a single 2FA account of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final withSecret = true; // bool | Set to true (or 1) to append the Secret property to the returned 2FA account

try {
    final result = api_instance.getTwofaccountsId(withSecret);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->getTwofaccountsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withSecret** | **bool**| Set to true (or 1) to append the Secret property to the returned 2FA account | [optional] 

### Return type

[**Model2FAccountRead**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchTwofaccountsWithdraw**
> Object patchTwofaccountsWithdraw(ids)

Withdraw accounts from groups

Removes a list of 2FA accounts of the authenticated user from any group

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final ids = 1,5,18; // String | A comma-separated list of IDs. A maximum of 100 IDs may be provided

try {
    final result = api_instance.patchTwofaccountsWithdraw(ids);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->patchTwofaccountsWithdraw: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| A comma-separated list of IDs. A maximum of 100 IDs may be provided | 

### Return type

[**Object**](Object.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTwofaccounts**
> Model2FAccountRead postTwofaccounts(postTwofaccountsRequest)

Create 2FA account

Creates a new 2FA account for the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final postTwofaccountsRequest = PostTwofaccountsRequest(); // PostTwofaccountsRequest | This endpoint accepts 2 different body schemas to create a new 2FA account: - A full JSON object with some properties - An URI based on the otpauth format

try {
    final result = api_instance.postTwofaccounts(postTwofaccountsRequest);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->postTwofaccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postTwofaccountsRequest** | [**PostTwofaccountsRequest**](PostTwofaccountsRequest.md)| This endpoint accepts 2 different body schemas to create a new 2FA account: - A full JSON object with some properties - An URI based on the otpauth format | [optional] 

### Return type

[**Model2FAccountRead**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTwofaccountsMigration**
> List<Model2FAccountMigrated> postTwofaccountsMigration(withSecret, postTwofaccountsMigrationRequest)

Convert a migration resource

Use this endpoint to convert exported 2FAs from another 2FA app to a list of 2FA resources you can POST using the API to create new 2FA accounts.  > This endpoint does not store anything in database.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final withSecret = true; // bool | Set to true (or 1) to append the Secret property to the returned 2FA account
final postTwofaccountsMigrationRequest = PostTwofaccountsMigrationRequest(); // PostTwofaccountsMigrationRequest | This endpoint accepts 2 different body schemas: - A JSON object which contain a migration payload. Typically the content of an export file or the decoded content of a QR code. - A multi-part/form-data to submit an export file directly

try {
    final result = api_instance.postTwofaccountsMigration(withSecret, postTwofaccountsMigrationRequest);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->postTwofaccountsMigration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **withSecret** | **bool**| Set to true (or 1) to append the Secret property to the returned 2FA account | [optional] 
 **postTwofaccountsMigrationRequest** | [**PostTwofaccountsMigrationRequest**](PostTwofaccountsMigrationRequest.md)| This endpoint accepts 2 different body schemas: - A JSON object which contain a migration payload. Typically the content of an export file or the decoded content of a QR code. - A multi-part/form-data to submit an export file directly | [optional] 

### Return type

[**List<Model2FAccountMigrated>**](Model2FAccountMigrated.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTwofaccountsPreview**
> Model2FAccountRead postTwofaccountsPreview(otpauthUri)

Preview 2FA account

Use this endpoint to preview a 2FA account described by an otpauth URI. It works exactly as if you POSTed an URI to create a 2FA account except it does not save anything in database.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final otpauthUri = OtpauthUri(); // OtpauthUri | 

try {
    final result = api_instance.postTwofaccountsPreview(otpauthUri);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->postTwofaccountsPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otpauthUri** | [**OtpauthUri**](OtpauthUri.md)|  | [optional] 

### Return type

[**Model2FAccountRead**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTwofaccountsReorder**
> Object postTwofaccountsReorder(postTwofaccountsReorderRequest)

Save order of the 2FA accounts collection

Saves the order of the 2FA accounts of the authenticated user. This allows to always serve the 2FA accounts collection sorted in a user defined order.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final postTwofaccountsReorderRequest = PostTwofaccountsReorderRequest(); // PostTwofaccountsReorderRequest | 

try {
    final result = api_instance.postTwofaccountsReorder(postTwofaccountsReorderRequest);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->postTwofaccountsReorder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postTwofaccountsReorderRequest** | [**PostTwofaccountsReorderRequest**](PostTwofaccountsReorderRequest.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putTwofaccountsId**
> Model2FAccountRead putTwofaccountsId(id, model2FAccountUpdate)

Update 2FA account

Updates a 2FA account of the authenticated user

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer-Auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer-Auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TwofaccountsApi();
final id = 1; // int | The ID of the resource
final model2FAccountUpdate = Model2FAccountUpdate(); // Model2FAccountUpdate | 

try {
    final result = api_instance.putTwofaccountsId(id, model2FAccountUpdate);
    print(result);
} catch (e) {
    print('Exception when calling TwofaccountsApi->putTwofaccountsId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The ID of the resource | 
 **model2FAccountUpdate** | [**Model2FAccountUpdate**](Model2FAccountUpdate.md)|  | [optional] 

### Return type

[**Model2FAccountRead**](Model2FAccountRead.md)

### Authorization

[Bearer-Auth](../README.md#Bearer-Auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

