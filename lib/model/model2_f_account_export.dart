//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model2FAccountExport {
  /// Returns a new [Model2FAccountExport] instance.
  Model2FAccountExport({
    this.service,
    required this.account,
    this.icon,
    required this.otpType,
    this.secret,
    this.digits,
    this.algorithm = const Model2FAccountExportAlgorithmEnum._(sha1),
    this.period = 30,
    this.counter = 0,
    required this.iconMime,
    required this.iconFile,
    required this.legacyUri,
  });

  /// The Issuer of the 2FA account
  Object? service;

  /// The Label of the 2FA account
  Object? account;

  /// The filename of the icon which decorate the 2FA account
  Object? icon;

  /// The type of 2FA account
  Model2FAccountExportOtpTypeEnum? otpType;

  /// A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
  Object? secret;

  /// The number of digits of the generated One-Time Password
  Object? digits;

  /// The algorithm used to generate the One-Time Password
  Model2FAccountExportAlgorithmEnum? algorithm;

  /// For TOTP only: The validity duration of One-Time Password generated for the account
  Object? period;

  /// for HOTP only: The value of the counter used to synchronize the account with its verification servers
  Object? counter;

  /// Mime-type of the image
  String? iconMime;

  /// Content of the image, encoded in base32
  String? iconFile;

  /// The original otpauth URI of the 2FA account
  String legacyUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model2FAccountExport &&
    other.service == service &&
    other.account == account &&
    other.icon == icon &&
    other.otpType == otpType &&
    other.secret == secret &&
    other.digits == digits &&
    other.algorithm == algorithm &&
    other.period == period &&
    other.counter == counter &&
    other.iconMime == iconMime &&
    other.iconFile == iconFile &&
    other.legacyUri == legacyUri;

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
    (iconMime == null ? 0 : iconMime!.hashCode) +
    (iconFile == null ? 0 : iconFile!.hashCode) +
    (legacyUri.hashCode);

  @override
  String toString() => 'Model2FAccountExport[service=$service, account=$account, icon=$icon, otpType=$otpType, secret=$secret, digits=$digits, algorithm=$algorithm, period=$period, counter=$counter, iconMime=$iconMime, iconFile=$iconFile, legacyUri=$legacyUri]';

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
    if (this.iconMime != null) {
      json[r'icon_mime'] = this.iconMime;
    } else {
      json[r'icon_mime'] = null;
    }
    if (this.iconFile != null) {
      json[r'icon_file'] = this.iconFile;
    } else {
      json[r'icon_file'] = null;
    }
      json[r'legacy_uri'] = this.legacyUri;
    return json;
  }

  /// Returns a new [Model2FAccountExport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model2FAccountExport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model2FAccountExport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model2FAccountExport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model2FAccountExport(
        service: mapValueOfType<Object>(json, r'service'),
        account: mapValueOfType<Object>(json, r'account'),
        icon: mapValueOfType<Object>(json, r'icon'),
        otpType: Object.fromJson(json[r'otp_type']),
        secret: mapValueOfType<Object>(json, r'secret'),
        digits: mapValueOfType<Object>(json, r'digits'),
        algorithm: Object.fromJson(json[r'algorithm']) ?? sha1,
        period: mapValueOfType<Object>(json, r'period') ?? 30,
        counter: mapValueOfType<Object>(json, r'counter') ?? 0,
        iconMime: mapValueOfType<String>(json, r'icon_mime'),
        iconFile: mapValueOfType<String>(json, r'icon_file'),
        legacyUri: mapValueOfType<String>(json, r'legacy_uri')!,
      );
    }
    return null;
  }

  static List<Model2FAccountExport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountExport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountExport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model2FAccountExport> mapFromJson(dynamic json) {
    final map = <String, Model2FAccountExport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model2FAccountExport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model2FAccountExport-objects as value to a dart map
  static Map<String, List<Model2FAccountExport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Model2FAccountExport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Model2FAccountExport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'otp_type',
    'icon_mime',
    'icon_file',
    'legacy_uri',
  };
}

/// The type of 2FA account
class Model2FAccountExportOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountExportOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const totp = Model2FAccountExportOtpTypeEnum._('totp');
  static const hotp = Model2FAccountExportOtpTypeEnum._('hotp');

  /// List of all possible values in this [enum][Model2FAccountExportOtpTypeEnum].
  static const values = <Model2FAccountExportOtpTypeEnum>[
    totp,
    hotp,
  ];

  static Model2FAccountExportOtpTypeEnum? fromJson(dynamic value) => Model2FAccountExportOtpTypeEnumTypeTransformer().decode(value);

  static List<Model2FAccountExportOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountExportOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountExportOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountExportOtpTypeEnum] to Object,
/// and [decode] dynamic data back to [Model2FAccountExportOtpTypeEnum].
class Model2FAccountExportOtpTypeEnumTypeTransformer {
  factory Model2FAccountExportOtpTypeEnumTypeTransformer() => _instance ??= const Model2FAccountExportOtpTypeEnumTypeTransformer._();

  const Model2FAccountExportOtpTypeEnumTypeTransformer._();

  Object encode(Model2FAccountExportOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountExportOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountExportOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'totp': return Model2FAccountExportOtpTypeEnum.totp;
        case 'hotp': return Model2FAccountExportOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountExportOtpTypeEnumTypeTransformer] instance.
  static Model2FAccountExportOtpTypeEnumTypeTransformer? _instance;
}


/// The algorithm used to generate the One-Time Password
class Model2FAccountExportAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const Model2FAccountExportAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const sha1 = Model2FAccountExportAlgorithmEnum._('sha1');
  static const sha256 = Model2FAccountExportAlgorithmEnum._('sha256');
  static const sha512 = Model2FAccountExportAlgorithmEnum._('sha512');
  static const md5 = Model2FAccountExportAlgorithmEnum._('md5');

  /// List of all possible values in this [enum][Model2FAccountExportAlgorithmEnum].
  static const values = <Model2FAccountExportAlgorithmEnum>[
    sha1,
    sha256,
    sha512,
    md5,
  ];

  static Model2FAccountExportAlgorithmEnum? fromJson(dynamic value) => Model2FAccountExportAlgorithmEnumTypeTransformer().decode(value);

  static List<Model2FAccountExportAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Model2FAccountExportAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model2FAccountExportAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [Model2FAccountExportAlgorithmEnum] to Object,
/// and [decode] dynamic data back to [Model2FAccountExportAlgorithmEnum].
class Model2FAccountExportAlgorithmEnumTypeTransformer {
  factory Model2FAccountExportAlgorithmEnumTypeTransformer() => _instance ??= const Model2FAccountExportAlgorithmEnumTypeTransformer._();

  const Model2FAccountExportAlgorithmEnumTypeTransformer._();

  Object encode(Model2FAccountExportAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a Model2FAccountExportAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Model2FAccountExportAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'sha1': return Model2FAccountExportAlgorithmEnum.sha1;
        case 'sha256': return Model2FAccountExportAlgorithmEnum.sha256;
        case 'sha512': return Model2FAccountExportAlgorithmEnum.sha512;
        case 'md5': return Model2FAccountExportAlgorithmEnum.md5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [Model2FAccountExportAlgorithmEnumTypeTransformer] instance.
  static Model2FAccountExportAlgorithmEnumTypeTransformer? _instance;
}


