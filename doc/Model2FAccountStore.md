# openapi.model.Model2FAccountStore

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service** | **String** | The Issuer of the 2FA account | [optional] 
**account** | **String** | The Label of the 2FA account | 
**icon** | **String** | The filename of the icon which decorate the 2FA account | [optional] 
**otpType** | **String** | The type of 2FA account | 
**secret** | **String** | A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password. | [optional] 
**digits** | **int** | The number of digits of the generated One-Time Password | [optional] 
**algorithm** | **String** | The algorithm used to generate the One-Time Password | [optional] [default to 'sha1']
**period** | **int** | For TOTP only: The validity duration of One-Time Password generated for the account | [optional] [default to 30]
**counter** | **int** | for HOTP only: The value of the counter used to synchronize the account with its verification servers | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


