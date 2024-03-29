//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model2FAccountUpdate {
  /// Returns a new [Model2FAccountUpdate] instance.
  Model2FAccountUpdate({
    required this.service,
    required this.account,
    required this.icon,
    required this.otpType,
    required this.secret,
    required this.digits,
    required this.algorithm,
    this.period,
    this.counter,
  });

  /// The Issuer of the 2FA account
  String? service;

  /// The Label of the 2FA account
  String account;

  /// The filename of the icon which decorate the 2FA account
  String? icon;

  /// The type of 2FA account
  Model2FAccountUpdateOtpTypeEnum otpType;

  /// A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password
  String secret;

  /// The number of digits of the generated One-Time Password
  int digits;

  /// The algorithm used to generate the One-Time Password
  Model2FAccountUpdateAlgorithmEnum algorithm;

  /// Required for TOTP only: The validity duration of One-Time Password generated for the account
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? period;

  /// Required for HOTP only: The value of the counter used to synchronize the account with its verification servers
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? counter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model2FAccountUpdate &&
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
    (secret.hashCode) +
    (digits.hashCode) +
    (algorithm.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (counter == null ? 0 : counter!.hashCode);

  @override
  String toString() => 'Model2FAccountUpdate[service=$service, account=$account, icon=$icon, otpType=$otpType, secret=$secret, digits=$digits, algorithm=$algorithm, period=$period, counter=$counter]';

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
      json[r'secret'] = this.secret;
      json[r'digits'] = this.digits;
      json[r'algorithm'] = this.algorithm;
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

  /// Returns a new [Model2FAccountUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model2FAccountUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model2FAccountUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model2FAccountUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model2FAccountUpdate(
        service: mapValueOfType<String>(json, r'service'),
        account: mapValueOfType<String>(json, r'account')!,
        icon: mapValueOfType<String>(json, r'icon'),
        otpType: Model2FAccountUpdateOtpTypeEnum.fromJson(json[r'otp_type'])!,
        secret: mapValueOfType<String>(json, r'secret')!,
        digits: mapValueOfType<int>(json, r'digits')!,
        algorithm: Model2FAccountUpdateAlgorithmEnum.fromJson(json[r'algorithm'])!,
        period: mapValueOfType<int>(json, r'period'),
        counter: mapValueOfType<int>(json, r'counter'),
      );
    }
    return null;
  }

  static List<Model2FAccountUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model2FAccountUpdate> mapFromJson(dynamic json) {
    final map = <String, Model2FAccountUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model2FAccountUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model2FAccountUpdate-objects as value to a dart map
  static Map<String, List<Model2FAccountUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Model2FAccountUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Model2FAccountUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'service',
    'account',
    'icon',
    'otp_type',
    'secret',
    'digits',
    'algorithm',
  };
}

/// The type of 2FA account
class Model2FAccountUpdateOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountUpdateOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const totp = Model2FAccountUpdateOtpTypeEnum._(r'totp');
  static const hotp = Model2FAccountUpdateOtpTypeEnum._(r'hotp');

  /// List of all possible values in this [enum][Model2FAccountUpdateOtpTypeEnum].
  static const values = <Model2FAccountUpdateOtpTypeEnum>[
    totp,
    hotp,
  ];

  static Model2FAccountUpdateOtpTypeEnum? fromJson(dynamic value) => Model2FAccountUpdateOtpTypeEnumTypeTransformer().decode(value);

  static List<Model2FAccountUpdateOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountUpdateOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountUpdateOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountUpdateOtpTypeEnum] to String,
/// and [decode] dynamic data back to [Model2FAccountUpdateOtpTypeEnum].
class Model2FAccountUpdateOtpTypeEnumTypeTransformer {
  factory Model2FAccountUpdateOtpTypeEnumTypeTransformer() => _instance ??= const Model2FAccountUpdateOtpTypeEnumTypeTransformer._();

  const Model2FAccountUpdateOtpTypeEnumTypeTransformer._();

  String encode(Model2FAccountUpdateOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountUpdateOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountUpdateOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'totp': return Model2FAccountUpdateOtpTypeEnum.totp;
        case r'hotp': return Model2FAccountUpdateOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountUpdateOtpTypeEnumTypeTransformer] instance.
  static Model2FAccountUpdateOtpTypeEnumTypeTransformer? _instance;
}


/// The algorithm used to generate the One-Time Password
class Model2FAccountUpdateAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountUpdateAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sha1 = Model2FAccountUpdateAlgorithmEnum._(r'sha1');
  static const sha256 = Model2FAccountUpdateAlgorithmEnum._(r'sha256');
  static const sha512 = Model2FAccountUpdateAlgorithmEnum._(r'sha512');
  static const md5 = Model2FAccountUpdateAlgorithmEnum._(r'md5');

  /// List of all possible values in this [enum][Model2FAccountUpdateAlgorithmEnum].
  static const values = <Model2FAccountUpdateAlgorithmEnum>[
    sha1,
    sha256,
    sha512,
    md5,
  ];

  static Model2FAccountUpdateAlgorithmEnum? fromJson(dynamic value) => Model2FAccountUpdateAlgorithmEnumTypeTransformer().decode(value);

  static List<Model2FAccountUpdateAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountUpdateAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountUpdateAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountUpdateAlgorithmEnum] to String,
/// and [decode] dynamic data back to [Model2FAccountUpdateAlgorithmEnum].
class Model2FAccountUpdateAlgorithmEnumTypeTransformer {
  factory Model2FAccountUpdateAlgorithmEnumTypeTransformer() => _instance ??= const Model2FAccountUpdateAlgorithmEnumTypeTransformer._();

  const Model2FAccountUpdateAlgorithmEnumTypeTransformer._();

  String encode(Model2FAccountUpdateAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountUpdateAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountUpdateAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'sha1': return Model2FAccountUpdateAlgorithmEnum.sha1;
        case r'sha256': return Model2FAccountUpdateAlgorithmEnum.sha256;
        case r'sha512': return Model2FAccountUpdateAlgorithmEnum.sha512;
        case r'md5': return Model2FAccountUpdateAlgorithmEnum.md5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountUpdateAlgorithmEnumTypeTransformer] instance.
  static Model2FAccountUpdateAlgorithmEnumTypeTransformer? _instance;
}


