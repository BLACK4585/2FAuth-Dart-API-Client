//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostTwofaccountsRequest {
  /// Returns a new [PostTwofaccountsRequest] instance.
  PostTwofaccountsRequest({
    this.service,
    required this.account,
    this.icon,
    required this.otpType,
    this.secret,
    this.digits,
    this.algorithm = const PostTwofaccountsRequestAlgorithmEnum._(sha1),
    this.period = 30,
    this.counter = 0,
    required this.uri,
  });

  /// The Issuer of the 2FA account
  Object? service;

  /// The Label of the 2FA account
  Object? account;

  /// The filename of the icon which decorate the 2FA account
  Object? icon;

  /// The type of 2FA account
  PostTwofaccountsRequestOtpTypeEnum? otpType;

  /// A base32 encoded string used by the cryptographic algorithm to generate the One-Time Password.
  Object? secret;

  /// The number of digits of the generated One-Time Password
  Object? digits;

  /// The algorithm used to generate the One-Time Password
  PostTwofaccountsRequestAlgorithmEnum? algorithm;

  /// For TOTP only: The validity duration of One-Time Password generated for the account
  Object? period;

  /// for HOTP only: The value of the counter used to synchronize the account with its verification servers
  Object? counter;

  /// A URI which describe a 2FA account (usually encoded as a QR code) following the otpauth format
  Object? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostTwofaccountsRequest &&
    other.service == service &&
    other.account == account &&
    other.icon == icon &&
    other.otpType == otpType &&
    other.secret == secret &&
    other.digits == digits &&
    other.algorithm == algorithm &&
    other.period == period &&
    other.counter == counter &&
    other.uri == uri;

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
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'PostTwofaccountsRequest[service=$service, account=$account, icon=$icon, otpType=$otpType, secret=$secret, digits=$digits, algorithm=$algorithm, period=$period, counter=$counter, uri=$uri]';

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
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [PostTwofaccountsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostTwofaccountsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostTwofaccountsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostTwofaccountsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostTwofaccountsRequest(
        service: mapValueOfType<Object>(json, r'service'),
        account: mapValueOfType<Object>(json, r'account'),
        icon: mapValueOfType<Object>(json, r'icon'),
        otpType: Object.fromJson(json[r'otp_type']),
        secret: mapValueOfType<Object>(json, r'secret'),
        digits: mapValueOfType<Object>(json, r'digits'),
        algorithm: Object.fromJson(json[r'algorithm']) ?? sha1,
        period: mapValueOfType<Object>(json, r'period') ?? 30,
        counter: mapValueOfType<Object>(json, r'counter') ?? 0,
        uri: mapValueOfType<Object>(json, r'uri'),
      );
    }
    return null;
  }

  static List<PostTwofaccountsRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTwofaccountsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTwofaccountsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostTwofaccountsRequest> mapFromJson(dynamic json) {
    final map = <String, PostTwofaccountsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostTwofaccountsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostTwofaccountsRequest-objects as value to a dart map
  static Map<String, List<PostTwofaccountsRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostTwofaccountsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostTwofaccountsRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account',
    'otp_type',
    'uri',
  };
}

/// The type of 2FA account
class PostTwofaccountsRequestOtpTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PostTwofaccountsRequestOtpTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const totp = PostTwofaccountsRequestOtpTypeEnum._('totp');
  static const hotp = PostTwofaccountsRequestOtpTypeEnum._('hotp');

  /// List of all possible values in this [enum][PostTwofaccountsRequestOtpTypeEnum].
  static const values = <PostTwofaccountsRequestOtpTypeEnum>[
    totp,
    hotp,
  ];

  static PostTwofaccountsRequestOtpTypeEnum? fromJson(dynamic value) => PostTwofaccountsRequestOtpTypeEnumTypeTransformer().decode(value);

  static List<PostTwofaccountsRequestOtpTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTwofaccountsRequestOtpTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTwofaccountsRequestOtpTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostTwofaccountsRequestOtpTypeEnum] to Object,
/// and [decode] dynamic data back to [PostTwofaccountsRequestOtpTypeEnum].
class PostTwofaccountsRequestOtpTypeEnumTypeTransformer {
  factory PostTwofaccountsRequestOtpTypeEnumTypeTransformer() => _instance ??= const PostTwofaccountsRequestOtpTypeEnumTypeTransformer._();

  const PostTwofaccountsRequestOtpTypeEnumTypeTransformer._();

  Object encode(PostTwofaccountsRequestOtpTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostTwofaccountsRequestOtpTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostTwofaccountsRequestOtpTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'totp': return PostTwofaccountsRequestOtpTypeEnum.totp;
        case 'hotp': return PostTwofaccountsRequestOtpTypeEnum.hotp;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostTwofaccountsRequestOtpTypeEnumTypeTransformer] instance.
  static PostTwofaccountsRequestOtpTypeEnumTypeTransformer? _instance;
}


/// The algorithm used to generate the One-Time Password
class PostTwofaccountsRequestAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const PostTwofaccountsRequestAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const sha1 = PostTwofaccountsRequestAlgorithmEnum._('sha1');
  static const sha256 = PostTwofaccountsRequestAlgorithmEnum._('sha256');
  static const sha512 = PostTwofaccountsRequestAlgorithmEnum._('sha512');
  static const md5 = PostTwofaccountsRequestAlgorithmEnum._('md5');

  /// List of all possible values in this [enum][PostTwofaccountsRequestAlgorithmEnum].
  static const values = <PostTwofaccountsRequestAlgorithmEnum>[
    sha1,
    sha256,
    sha512,
    md5,
  ];

  static PostTwofaccountsRequestAlgorithmEnum? fromJson(dynamic value) => PostTwofaccountsRequestAlgorithmEnumTypeTransformer().decode(value);

  static List<PostTwofaccountsRequestAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTwofaccountsRequestAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTwofaccountsRequestAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PostTwofaccountsRequestAlgorithmEnum] to Object,
/// and [decode] dynamic data back to [PostTwofaccountsRequestAlgorithmEnum].
class PostTwofaccountsRequestAlgorithmEnumTypeTransformer {
  factory PostTwofaccountsRequestAlgorithmEnumTypeTransformer() => _instance ??= const PostTwofaccountsRequestAlgorithmEnumTypeTransformer._();

  const PostTwofaccountsRequestAlgorithmEnumTypeTransformer._();

  Object encode(PostTwofaccountsRequestAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostTwofaccountsRequestAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostTwofaccountsRequestAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'sha1': return PostTwofaccountsRequestAlgorithmEnum.sha1;
        case 'sha256': return PostTwofaccountsRequestAlgorithmEnum.sha256;
        case 'sha512': return PostTwofaccountsRequestAlgorithmEnum.sha512;
        case 'md5': return PostTwofaccountsRequestAlgorithmEnum.md5;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostTwofaccountsRequestAlgorithmEnumTypeTransformer] instance.
  static PostTwofaccountsRequestAlgorithmEnumTypeTransformer? _instance;
}


