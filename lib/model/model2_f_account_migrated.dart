//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model2FAccountMigrated {
  /// Returns a new [Model2FAccountMigrated] instance.
  Model2FAccountMigrated({
    this.service,
    required this.account,
    this.icon,
    required this.otpType,
    this.secret,
    this.digits,
    this.algorithm = Model2FAccountMigratedAlgorithmEnum.sha1,
    this.period = 30,
    this.counter = 0,
    required this.id,
    required this.groupId,
  });

  /// The Issuer of the 2FA account
  Object? service;

  /// The Label of the 2FA account
  Object? account;

  /// The filename of the icon which decorate the 2FA account
  Object? icon;

  /// The type of 2FA account
  Model2FAccountMigratedOtpTypeEnum? otpType;

  /// A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
  Object? secret;

  /// The number of digits of the generated One-Time Password
  Object? digits;

  /// The algorithm used to generate the One-Time Password
  Model2FAccountMigratedAlgorithmEnum? algorithm;

  /// For TOTP only: The validity duration of One-Time Password generated for the account
  Object? period;

  /// for HOTP only: The value of the counter used to synchronize the account with its verification servers
  Object? counter;

  /// ID of the 2FA account
  ///
  /// Minimum value: -2
  /// Maximum value: 0
  int id;

  /// The ID of the group the 2FA account belongs to
  ///
  /// Minimum value: 1
  int? groupId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model2FAccountMigrated &&
    other.service == service &&
    other.account == account &&
    other.icon == icon &&
    other.otpType == otpType &&
    other.secret == secret &&
    other.digits == digits &&
    other.algorithm == algorithm &&
    other.period == period &&
    other.counter == counter &&
    other.id == id &&
    other.groupId == groupId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (service == null ? 0 : service!.hashCode) +
    (account == null ? 0 : account!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (otpType == null ? 0 : otpType!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (digits == null ? 0 : digits!.hashCode) +
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (counter == null ? 0 : counter!.hashCode) +
    (id.hashCode) +
    (groupId == null ? 0 : groupId!.hashCode);

  @override
  String toString() => 'Model2FAccountMigrated[service=$service, account=$account, icon=$icon, otpType=$otpType, secret=$secret, digits=$digits, algorithm=$algorithm, period=$period, counter=$counter, id=$id, groupId=$groupId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.otpType != null) {
      json[r'otp_type'] = this.otpType;
    } else {
      json[r'otp_type'] = null;
    }
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
      json[r'id'] = this.id;
    if (this.groupId != null) {
      json[r'group_id'] = this.groupId;
    } else {
      json[r'group_id'] = null;
    }
    return json;
  }

  /// Returns a new [Model2FAccountMigrated] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model2FAccountMigrated? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model2FAccountMigrated[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model2FAccountMigrated[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model2FAccountMigrated(
        service: mapValueOfType<Object>(json, r'service'),
        account: mapValueOfType<Object>(json, r'account'),
        icon: mapValueOfType<Object>(json, r'icon'),
        otpType: Model2FAccountMigratedOtpTypeEnum.fromJson(json[r'otp_type']),
        secret: mapValueOfType<Object>(json, r'secret'),
        digits: mapValueOfType<Object>(json, r'digits'),
        algorithm: Model2FAccountMigratedAlgorithmEnum.fromJson(json[r'algorithm']) ?? Model2FAccountMigratedAlgorithmEnum.sha1,
        period: mapValueOfType<Object>(json, r'period') ?? 30,
        counter: mapValueOfType<Object>(json, r'counter') ?? 0,
        id: mapValueOfType<int>(json, r'id')!,
        groupId: mapValueOfType<int>(json, r'group_id'),
      );
    }
    return null;
  }

  static List<Model2FAccountMigrated> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountMigrated>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountMigrated.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model2FAccountMigrated> mapFromJson(dynamic json) {
    final map = <String, Model2FAccountMigrated>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model2FAccountMigrated.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model2FAccountMigrated-objects as value to a dart map
  static Map<String, List<Model2FAccountMigrated>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Model2FAccountMigrated>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Model2FAccountMigrated.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'otp_type',
    'id',
    'group_id',
  };
}

/// The type of 2FA account
class Model2FAccountMigratedOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountMigratedOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const totp = Model2FAccountMigratedOtpTypeEnum._('totp');
  static const hotp = Model2FAccountMigratedOtpTypeEnum._('hotp');

  /// List of all possible values in this [enum][Model2FAccountMigratedOtpTypeEnum].
  static const values = <Model2FAccountMigratedOtpTypeEnum>[
    totp,
    hotp,
  ];

  static Model2FAccountMigratedOtpTypeEnum? fromJson(dynamic value) => Model2FAccountMigratedOtpTypeEnumTypeTransformer().decode(value);

  static List<Model2FAccountMigratedOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountMigratedOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountMigratedOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountMigratedOtpTypeEnum] to Object,
/// and [decode] dynamic data back to [Model2FAccountMigratedOtpTypeEnum].
class Model2FAccountMigratedOtpTypeEnumTypeTransformer {
  factory Model2FAccountMigratedOtpTypeEnumTypeTransformer() => _instance ??= const Model2FAccountMigratedOtpTypeEnumTypeTransformer._();

  const Model2FAccountMigratedOtpTypeEnumTypeTransformer._();

  Object encode(Model2FAccountMigratedOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountMigratedOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountMigratedOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'totp': return Model2FAccountMigratedOtpTypeEnum.totp;
        case 'hotp': return Model2FAccountMigratedOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountMigratedOtpTypeEnumTypeTransformer] instance.
  static Model2FAccountMigratedOtpTypeEnumTypeTransformer? _instance;
}


/// The algorithm used to generate the One-Time Password
class Model2FAccountMigratedAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountMigratedAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const sha1 = Model2FAccountMigratedAlgorithmEnum._('sha1');
  static const sha256 = Model2FAccountMigratedAlgorithmEnum._('sha256');
  static const sha512 = Model2FAccountMigratedAlgorithmEnum._('sha512');
  static const md5 = Model2FAccountMigratedAlgorithmEnum._('md5');

  /// List of all possible values in this [enum][Model2FAccountMigratedAlgorithmEnum].
  static const values = <Model2FAccountMigratedAlgorithmEnum>[
    sha1,
    sha256,
    sha512,
    md5,
  ];

  static Model2FAccountMigratedAlgorithmEnum? fromJson(dynamic value) => Model2FAccountMigratedAlgorithmEnumTypeTransformer().decode(value);

  static List<Model2FAccountMigratedAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountMigratedAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountMigratedAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountMigratedAlgorithmEnum] to Object,
/// and [decode] dynamic data back to [Model2FAccountMigratedAlgorithmEnum].
class Model2FAccountMigratedAlgorithmEnumTypeTransformer {
  factory Model2FAccountMigratedAlgorithmEnumTypeTransformer() => _instance ??= const Model2FAccountMigratedAlgorithmEnumTypeTransformer._();

  const Model2FAccountMigratedAlgorithmEnumTypeTransformer._();

  Object encode(Model2FAccountMigratedAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountMigratedAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountMigratedAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'sha1': return Model2FAccountMigratedAlgorithmEnum.sha1;
        case 'sha256': return Model2FAccountMigratedAlgorithmEnum.sha256;
        case 'sha512': return Model2FAccountMigratedAlgorithmEnum.sha512;
        case 'md5': return Model2FAccountMigratedAlgorithmEnum.md5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountMigratedAlgorithmEnumTypeTransformer] instance.
  static Model2FAccountMigratedAlgorithmEnumTypeTransformer? _instance;
}


