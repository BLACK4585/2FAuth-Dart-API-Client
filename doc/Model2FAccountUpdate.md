# openapi.model.Model2FAccountUpdate

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service** | **String** | The Issuer of the 2FA account | 
**account** | **String** | The Label of the 2FA account | 
**icon** | **String** | The filename of the icon which decorate the 2FA account | 
**otpType** | **String** | The type of 2FA account | 
**secret** | **String** | A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password | 
**digits** | **int** | The number of digits of the generated One-Time Password | 
**algorithm** | **String** | The algorithm used to generate the One-Time Password | 
**period** | **int** | Required for TOTP only: The validity duration of One-Time Password generated for the account | [optional] 
**counter** | **int** | Required for HOTP only: The value of the counter used to synchronize the account with its verification servers | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


