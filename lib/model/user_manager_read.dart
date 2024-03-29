//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserManagerRead {
  /// Returns a new [UserManagerRead] instance.
  UserManagerRead({
    required this.id,
    required this.name,
    required this.email,
    required this.oauthProvider,
    required this.preferences,
    this.isAdmin = false,
    required this.twofaccountsCount,
    required this.lastSeenAt,
    required this.createdAt,
  });

  /// The user Id
  Object? id;

  /// The username
  Object? name;

  /// The user email
  Object? email;

  /// The OAUTH provider for SSO, if relevant
  Object? oauthProvider;

  UserReadPreferences preferences;

  /// The user has administrator rights or not
  Object? isAdmin;

  /// Number of 2FA accounts registered
  int twofaccountsCount;

  /// Last time the user was seen
  String lastSeenAt;

  /// Time of user registration
  String createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserManagerRead &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.oauthProvider == oauthProvider &&
    other.preferences == preferences &&
    other.isAdmin == isAdmin &&
    other.twofaccountsCount == twofaccountsCount &&
    other.lastSeenAt == lastSeenAt &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (oauthProvider == null ? 0 : oauthProvider!.hashCode) +
    (preferences.hashCode) +
    (isAdmin == null ? 0 : isAdmin!.hashCode) +
    (twofaccountsCount.hashCode) +
    (lastSeenAt.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'UserManagerRead[id=$id, name=$name, email=$email, oauthProvider=$oauthProvider, preferences=$preferences, isAdmin=$isAdmin, twofaccountsCount=$twofaccountsCount, lastSeenAt=$lastSeenAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.oauthProvider != null) {
      json[r'oauth_provider'] = this.oauthProvider;
    } else {
      json[r'oauth_provider'] = null;
    }
      json[r'preferences'] = this.preferences;
    if (this.isAdmin != null) {
      json[r'is_admin'] = this.isAdmin;
    } else {
      json[r'is_admin'] = null;
    }
      json[r'twofaccounts_count'] = this.twofaccountsCount;
      json[r'last_seen_at'] = this.lastSeenAt;
      json[r'created_at'] = this.createdAt;
    return json;
  }

  /// Returns a new [UserManagerRead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserManagerRead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserManagerRead[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserManagerRead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserManagerRead(
        id: mapValueOfType<Object>(json, r'id'),
        name: mapValueOfType<Object>(json, r'name'),
        email: mapValueOfType<Object>(json, r'email'),
        oauthProvider: mapValueOfType<Object>(json, r'oauth_provider'),
        preferences: UserReadPreferences.fromJson(json[r'preferences'])!,
        isAdmin: mapValueOfType<Object>(json, r'is_admin'),
        twofaccountsCount: mapValueOfType<int>(json, r'twofaccounts_count')!,
        lastSeenAt: mapValueOfType<String>(json, r'last_seen_at')!,
        createdAt: mapValueOfType<String>(json, r'created_at')!,
      );
    }
    return null;
  }

  static List<UserManagerRead> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserManagerRead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserManagerRead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserManagerRead> mapFromJson(dynamic json) {
    final map = <String, UserManagerRead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserManagerRead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserManagerRead-objects as value to a dart map
  static Map<String, List<UserManagerRead>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserManagerRead>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserManagerRead.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
    'oauth_provider',
    'preferences',
    'is_admin',
    'twofaccounts_count',
    'last_seen_at',
    'created_at',
  };
}

