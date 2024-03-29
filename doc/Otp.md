# openapi.model.Otp

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**password** | **String** | the One-Time Password | 
**otpType** | **String** | The type of the One-Time Password | 
**generatedAt** | **int** | TOTP only: The timestamp of the generation time | [optional] 
**period** | **int** | TOTP only: The validity period of the password | [optional] 
**counter** | **int** | HOTP only: The number of password computing iterations | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


