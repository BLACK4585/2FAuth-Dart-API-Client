//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model2FAccountStore {
  /// Returns a new [Model2FAccountStore] instance.
  Model2FAccountStore({
    this.service,
    required this.account,
    this.icon,
    required this.otpType,
    this.secret,
    this.digits,
    this.algorithm = const Model2FAccountStoreAlgorithmEnum._('sha1'),
    this.period = 30,
    this.counter = 0,
  });

  /// The Issuer of the 2FA account
  String? service;

  /// The Label of the 2FA account
  String account;

  /// The filename of the icon which decorate the 2FA account
  String? icon;

  /// The type of 2FA account
  Model2FAccountStoreOtpTypeEnum otpType;

  /// A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
  String? secret;

  /// The number of digits of the generated One-Time Password
  int? digits;

  /// The algorithm used to generate the One-Time Password
  Model2FAccountStoreAlgorithmEnum? algorithm;

  /// For TOTP only: The validity duration of One-Time Password generated for the account
  int? period;

  /// for HOTP only: The value of the counter used to synchronize the account with its verification servers
  int? counter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model2FAccountStore &&
    other.service == service &&
    other.account == account &&
    other.icon == icon &&
    other.otpType == otpType &&
    other.secret == secret &&
    other.digits == digits &&
    other.algorithm == algorithm &&
    other.period == period &&
    other.counter == counter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (service == null ? 0 : service!.hashCode) +
    (account.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (otpType.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (counter == null ? 0 : counter!.hashCode);

  @override
  String toString() => 'Model2FAccountStore[service=$service, account=$account, icon=$icon, otpType=$otpType, secret=$secret, digits=$digits, algorithm=$algorithm, period=$period, counter=$counter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
      json[r'account'] = this.account;
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
      json[r'otp_type'] = this.otpType;
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.digits != null) {
      json[r'digits'] = this.digits;
    } else {
      json[r'digits'] = null;
    }
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.counter != null) {
      json[r'counter'] = this.counter;
    } else {
      json[r'counter'] = null;
    }
    return json;
  }

  /// Returns a new [Model2FAccountStore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model2FAccountStore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model2FAccountStore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model2FAccountStore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model2FAccountStore(
        service: mapValueOfType<String>(json, r'service'),
        account: mapValueOfType<String>(json, r'account')!,
        icon: mapValueOfType<String>(json, r'icon'),
        otpType: Model2FAccountStoreOtpTypeEnum.fromJson(json[r'otp_type'])!,
        secret: mapValueOfType<String>(json, r'secret'),
        digits: mapValueOfType<int>(json, r'digits'),
        algorithm: Model2FAccountStoreAlgorithmEnum.fromJson(json[r'algorithm']) ?? 'sha1',
        period: mapValueOfType<int>(json, r'period') ?? 30,
        counter: mapValueOfType<int>(json, r'counter') ?? 0,
      );
    }
    return null;
  }

  static List<Model2FAccountStore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountStore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountStore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model2FAccountStore> mapFromJson(dynamic json) {
    final map = <String, Model2FAccountStore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model2FAccountStore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model2FAccountStore-objects as value to a dart map
  static Map<String, List<Model2FAccountStore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Model2FAccountStore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Model2FAccountStore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'otp_type',
  };
}

/// The type of 2FA account
class Model2FAccountStoreOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountStoreOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const totp = Model2FAccountStoreOtpTypeEnum._(r'totp');
  static const hotp = Model2FAccountStoreOtpTypeEnum._(r'hotp');

  /// List of all possible values in this [enum][Model2FAccountStoreOtpTypeEnum].
  static const values = <Model2FAccountStoreOtpTypeEnum>[
    totp,
    hotp,
  ];

  static Model2FAccountStoreOtpTypeEnum? fromJson(dynamic value) => Model2FAccountStoreOtpTypeEnumTypeTransformer().decode(value);

  static List<Model2FAccountStoreOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountStoreOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountStoreOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountStoreOtpTypeEnum] to String,
/// and [decode] dynamic data back to [Model2FAccountStoreOtpTypeEnum].
class Model2FAccountStoreOtpTypeEnumTypeTransformer {
  factory Model2FAccountStoreOtpTypeEnumTypeTransformer() => _instance ??= const Model2FAccountStoreOtpTypeEnumTypeTransformer._();

  const Model2FAccountStoreOtpTypeEnumTypeTransformer._();

  String encode(Model2FAccountStoreOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountStoreOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountStoreOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'totp': return Model2FAccountStoreOtpTypeEnum.totp;
        case r'hotp': return Model2FAccountStoreOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountStoreOtpTypeEnumTypeTransformer] instance.
  static Model2FAccountStoreOtpTypeEnumTypeTransformer? _instance;
}


/// The algorithm used to generate the One-Time Password
class Model2FAccountStoreAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountStoreAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sha1 = Model2FAccountStoreAlgorithmEnum._(r'sha1');
  static const sha256 = Model2FAccountStoreAlgorithmEnum._(r'sha256');
  static const sha512 = Model2FAccountStoreAlgorithmEnum._(r'sha512');
  static const md5 = Model2FAccountStoreAlgorithmEnum._(r'md5');

  /// List of all possible values in this [enum][Model2FAccountStoreAlgorithmEnum].
  static const values = <Model2FAccountStoreAlgorithmEnum>[
    sha1,
    sha256,
    sha512,
    md5,
  ];

  static Model2FAccountStoreAlgorithmEnum? fromJson(dynamic value) => Model2FAccountStoreAlgorithmEnumTypeTransformer().decode(value);

  static List<Model2FAccountStoreAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountStoreAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountStoreAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountStoreAlgorithmEnum] to String,
/// and [decode] dynamic data back to [Model2FAccountStoreAlgorithmEnum].
class Model2FAccountStoreAlgorithmEnumTypeTransformer {
  factory Model2FAccountStoreAlgorithmEnumTypeTransformer() => _instance ??= const Model2FAccountStoreAlgorithmEnumTypeTransformer._();

  const Model2FAccountStoreAlgorithmEnumTypeTransformer._();

  String encode(Model2FAccountStoreAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountStoreAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountStoreAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sha1': return Model2FAccountStoreAlgorithmEnum.sha1;
        case r'sha256': return Model2FAccountStoreAlgorithmEnum.sha256;
        case r'sha512': return Model2FAccountStoreAlgorithmEnum.sha512;
        case r'md5': return Model2FAccountStoreAlgorithmEnum.md5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountStoreAlgorithmEnumTypeTransformer] instance.
  static Model2FAccountStoreAlgorithmEnumTypeTransformer? _instance;
}


