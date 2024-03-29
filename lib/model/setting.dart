//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Setting {
  /// Returns a new [Setting] instance.
  Setting({
    required this.key,
    required this.value,
  });

  /// Name of the setting
  String key;

  SettingValue value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Setting &&
    other.key == key &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'Setting[key=$key, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [Setting] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Setting? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Setting[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Setting[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Setting(
        key: mapValueOfType<String>(json, r'key')!,
        value: SettingValue.fromJson(json[r'value'])!,
      );
    }
    return null;
  }

  static List<Setting> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Setting>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Setting.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Setting> mapFromJson(dynamic json) {
    final map = <String, Setting>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Setting.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Setting-objects as value to a dart map
  static Map<String, List<Setting>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Setting>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Setting.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'value',
  };
}

