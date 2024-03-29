# openapi.model.UserManagerRead

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**Object**](.md) | The user Id | 
**name** | [**Object**](.md) | The username | 
**email** | [**Object**](.md) | The user email | 
**oauthProvider** | [**Object**](.md) | The OAUTH provider for SSO, if relevant | 
**preferences** | [**UserReadPreferences**](UserReadPreferences.md) |  | 
**isAdmin** | [**Object**](.md) | The user has administrator rights or not | [default to false]
**twofaccountsCount** | **int** | Number of 2FA accounts registered | 
**lastSeenAt** | **String** | Last time the user was seen | 
**createdAt** | **String** | Time of user registration | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


