//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostTwofaccountsReorderRequest {
  /// Returns a new [PostTwofaccountsReorderRequest] instance.
  PostTwofaccountsReorderRequest({
    this.orderedIds = const [],
  });

  /// An array of 2FA account IDs ordered in the wished order
  List<int> orderedIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostTwofaccountsReorderRequest &&
    _deepEquality.equals(other.orderedIds, orderedIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (orderedIds.hashCode);

  @override
  String toString() => 'PostTwofaccountsReorderRequest[orderedIds=$orderedIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'orderedIds'] = this.orderedIds;
    return json;
  }

  /// Returns a new [PostTwofaccountsReorderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostTwofaccountsReorderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostTwofaccountsReorderRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostTwofaccountsReorderRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostTwofaccountsReorderRequest(
        orderedIds: json[r'orderedIds'] is Iterable
            ? (json[r'orderedIds'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PostTwofaccountsReorderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostTwofaccountsReorderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostTwofaccountsReorderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostTwofaccountsReorderRequest> mapFromJson(dynamic json) {
    final map = <String, PostTwofaccountsReorderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostTwofaccountsReorderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostTwofaccountsReorderRequest-objects as value to a dart map
  static Map<String, List<PostTwofaccountsReorderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostTwofaccountsReorderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostTwofaccountsReorderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'orderedIds',
  };
}

