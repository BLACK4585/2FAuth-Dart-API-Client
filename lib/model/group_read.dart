//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupRead {
  /// Returns a new [GroupRead] instance.
  GroupRead({
    required this.id,
    required this.name,
    required this.twofaccountsCount,
  });

  /// ID of the Group
  ///
  /// Minimum value: 0
  int id;

  /// Name of the Group
  String name;

  /// Number of 2FA accounts in the group
  ///
  /// Minimum value: 0
  int twofaccountsCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupRead &&
    other.id == id &&
    other.name == name &&
    other.twofaccountsCount == twofaccountsCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (twofaccountsCount.hashCode);

  @override
  String toString() => 'GroupRead[id=$id, name=$name, twofaccountsCount=$twofaccountsCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'twofaccounts_count'] = this.twofaccountsCount;
    return json;
  }

  /// Returns a new [GroupRead] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupRead? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupRead[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupRead[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupRead(
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        twofaccountsCount: mapValueOfType<int>(json, r'twofaccounts_count')!,
      );
    }
    return null;
  }

  static List<GroupRead> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupRead>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupRead.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupRead> mapFromJson(dynamic json) {
    final map = <String, GroupRead>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupRead.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupRead-objects as value to a dart map
  static Map<String, List<GroupRead>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupRead>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupRead.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'twofaccounts_count',
  };
}

