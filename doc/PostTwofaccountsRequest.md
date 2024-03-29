# openapi.model.PostTwofaccountsRequest

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service** | [**Object**](.md) | The Issuer of the 2FA account | [optional] 
**account** | [**Object**](.md) | The Label of the 2FA account | 
**icon** | [**Object**](.md) | The filename of the icon which decorate the 2FA account | [optional] 
**otpType** | [**Object**](Object.md) | The type of 2FA account | 
**secret** | [**Object**](.md) | A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password. | [optional] 
**digits** | [**Object**](.md) | The number of digits of the generated One-Time Password | [optional] 
**algorithm** | [**Object**](Object.md) | The algorithm used to generate the One-Time Password | [optional] [default to sha1]
**period** | [**Object**](.md) | For TOTP only: The validity duration of One-Time Password generated for the account | [optional] [default to 30]
**counter** | [**Object**](.md) | for HOTP only: The value of the counter used to synchronize the account with its verification servers | [optional] [default to 0]
**uri** | [**Object**](.md) | A URI which describe a 2FA account (usually encoded as a QR code) following the otpauth format | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


