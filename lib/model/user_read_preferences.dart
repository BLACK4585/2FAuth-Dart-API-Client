//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserReadPreferences {
  /// Returns a new [UserReadPreferences] instance.
  UserReadPreferences({
    this.preferenceName1,
    this.preferenceName2,
    this.preferenceName3,
  });

  /// A user preference that is a string
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferenceName1;

  /// A user preference that is a number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? preferenceName2;

  /// A user preference that is a boolean
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? preferenceName3;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserReadPreferences &&
    other.preferenceName1 == preferenceName1 &&
    other.preferenceName2 == preferenceName2 &&
    other.preferenceName3 == preferenceName3;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (preferenceName1 == null ? 0 : preferenceName1!.hashCode) +
    (preferenceName2 == null ? 0 : preferenceName2!.hashCode) +
    (preferenceName3 == null ? 0 : preferenceName3!.hashCode);

  @override
  String toString() => 'UserReadPreferences[preferenceName1=$preferenceName1, preferenceName2=$preferenceName2, preferenceName3=$preferenceName3]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.preferenceName1 != null) {
      json[r'preference_name_1'] = this.preferenceName1;
    } else {
      json[r'preference_name_1'] = null;
    }
    if (this.preferenceName2 != null) {
      json[r'preference_name_2'] = this.preferenceName2;
    } else {
      json[r'preference_name_2'] = null;
    }
    if (this.preferenceName3 != null) {
      json[r'preference_name_3'] = this.preferenceName3;
    } else {
      json[r'preference_name_3'] = null;
    }
    return json;
  }

  /// Returns a new [UserReadPreferences] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserReadPreferences? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserReadPreferences[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserReadPreferences[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserReadPreferences(
        preferenceName1: mapValueOfType<String>(json, r'preference_name_1'),
        preferenceName2: mapValueOfType<int>(json, r'preference_name_2'),
        preferenceName3: mapValueOfType<bool>(json, r'preference_name_3'),
      );
    }
    return null;
  }

  static List<UserReadPreferences> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserReadPreferences>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserReadPreferences.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserReadPreferences> mapFromJson(dynamic json) {
    final map = <String, UserReadPreferences>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserReadPreferences.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserReadPreferences-objects as value to a dart map
  static Map<String, List<UserReadPreferences>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserReadPreferences>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserReadPreferences.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

