//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Otp {
  /// Returns a new [Otp] instance.
  Otp({
    required this.password,
    required this.otpType,
    this.generatedAt,
    this.period,
    this.counter,
  });

  /// the One-Time Password
  String password;

  /// The type of the One-Time Password
  OtpOtpTypeEnum otpType;

  /// TOTP only: The timestamp of the generation time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? generatedAt;

  /// TOTP only: The validity period of the password
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? period;

  /// HOTP only: The number of password computing iterations
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? counter;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Otp &&
    other.password == password &&
    other.otpType == otpType &&
    other.generatedAt == generatedAt &&
    other.period == period &&
    other.counter == counter;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (password.hashCode) +
    (otpType.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (period == null ? 0 : period!.hashCode) +
    (counter == null ? 0 : counter!.hashCode);

  @override
  String toString() => 'Otp[password=$password, otpType=$otpType, generatedAt=$generatedAt, period=$period, counter=$counter]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'password'] = this.password;
      json[r'otp_type'] = this.otpType;
    if (this.generatedAt != null) {
      json[r'generated_at'] = this.generatedAt;
    } else {
      json[r'generated_at'] = null;
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

  /// Returns a new [Otp] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Otp? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Otp[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Otp[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Otp(
        password: mapValueOfType<String>(json, r'password')!,
        otpType: OtpOtpTypeEnum.fromJson(json[r'otp_type'])!,
        generatedAt: mapValueOfType<int>(json, r'generated_at'),
        period: mapValueOfType<int>(json, r'period'),
        counter: mapValueOfType<int>(json, r'counter'),
      );
    }
    return null;
  }

  static List<Otp> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Otp>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Otp.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Otp> mapFromJson(dynamic json) {
    final map = <String, Otp>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Otp.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Otp-objects as value to a dart map
  static Map<String, List<Otp>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Otp>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Otp.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'password',
    'otp_type',
  };
}

/// The type of the One-Time Password
class OtpOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OtpOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const totp = OtpOtpTypeEnum._(r'totp');
  static const hotp = OtpOtpTypeEnum._(r'hotp');

  /// List of all possible values in this [enum][OtpOtpTypeEnum].
  static const values = <OtpOtpTypeEnum>[
    totp,
    hotp,
  ];

  static OtpOtpTypeEnum? fromJson(dynamic value) => OtpOtpTypeEnumTypeTransformer().decode(value);

  static List<OtpOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OtpOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OtpOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OtpOtpTypeEnum] to String,
/// and [decode] dynamic data back to [OtpOtpTypeEnum].
class OtpOtpTypeEnumTypeTransformer {
  factory OtpOtpTypeEnumTypeTransformer() => _instance ??= const OtpOtpTypeEnumTypeTransformer._();

  const OtpOtpTypeEnumTypeTransformer._();

  String encode(OtpOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OtpOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OtpOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'totp': return OtpOtpTypeEnum.totp;
        case r'hotp': return OtpOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OtpOtpTypeEnumTypeTransformer] instance.
  static OtpOtpTypeEnumTypeTransformer? _instance;
}


