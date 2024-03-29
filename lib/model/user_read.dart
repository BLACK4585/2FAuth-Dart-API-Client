//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRead {
  /// Returns a new [UserRead] instance.
  UserRead({
    required this.id,
    required this.name,
    required this.email,
    required this.oauthProvider,
    required this.preferences,
    this.isAdmin = false,
  });

  /// The user Id
  int id;

  /// The username
  String name;

  /// The user email
  String email;

  /// The OAUTH provider for SSO, if relevant
  String? oauthProvider;

  UserReadPreferences preferences;

  /// The user has administrator rights or not
  bool isAdmin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRead &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.oauthProvider == oauthProvider &&
    other.preferences == preferences &&
    other.isAdmin == isAdmin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (oauthProvider == null ? 0 : oauthProvider!.hashCode) +
    (preferences.hashCode) +
    (isAdmin.hashCode);

  @override
  String toString() => 'UserRead[id=$id, name=$name, email=$email, oauthProvider=$oauthProvider, preferences=$preferences, isAdmin=$isAdmin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
    if (this.oauthProvider != null) {
      json[r'oauth_provider'] = this.oauthProvider;
    } else {
      json[r'oauth_provider'] = null;
    }
      json[r'preferences'] = this.preferences;
      json[r'is_admin'] = this.isAdmin;
    return json;
  }

  /// Returns a new [UserRead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserRead[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserRead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserRead(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        oauthProvider: mapValueOfType<String>(json, r'oauth_provider'),
        preferences: UserReadPreferences.fromJson(json[r'preferences'])!,
        isAdmin: mapValueOfType<bool>(json, r'is_admin')!,
      );
    }
    return null;
  }

  static List<UserRead> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserRead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserRead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserRead> mapFromJson(dynamic json) {
    final map = <String, UserRead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserRead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserRead-objects as value to a dart map
  static Map<String, List<UserRead>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserRead>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserRead.listFromJson(entry.value, growable: growable,);
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
  };
}

