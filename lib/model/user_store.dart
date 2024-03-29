//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserStore {
  /// Returns a new [UserStore] instance.
  UserStore({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.isAdmin,
  });

  /// The name of the user
  String name;

  /// The email address of the user
  String email;

  /// The password of the user
  String password;

  /// The password of the user
  String passwordConfirmation;

  /// Grant or deny administrator permissions to the user
  bool isAdmin;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserStore &&
    other.name == name &&
    other.email == email &&
    other.password == password &&
    other.passwordConfirmation == passwordConfirmation &&
    other.isAdmin == isAdmin;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (email.hashCode) +
    (password.hashCode) +
    (passwordConfirmation.hashCode) +
    (isAdmin.hashCode);

  @override
  String toString() => 'UserStore[name=$name, email=$email, password=$password, passwordConfirmation=$passwordConfirmation, isAdmin=$isAdmin]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'email'] = this.email;
      json[r'password'] = this.password;
      json[r'password_confirmation'] = this.passwordConfirmation;
      json[r'is_admin'] = this.isAdmin;
    return json;
  }

  /// Returns a new [UserStore] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserStore? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserStore[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserStore[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserStore(
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        password: mapValueOfType<String>(json, r'password')!,
        passwordConfirmation: mapValueOfType<String>(json, r'password_confirmation')!,
        isAdmin: mapValueOfType<bool>(json, r'is_admin')!,
      );
    }
    return null;
  }

  static List<UserStore> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserStore>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserStore.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserStore> mapFromJson(dynamic json) {
    final map = <String, UserStore>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserStore.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserStore-objects as value to a dart map
  static Map<String, List<UserStore>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserStore>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserStore.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'email',
    'password',
    'password_confirmation',
    'is_admin',
  };
}

