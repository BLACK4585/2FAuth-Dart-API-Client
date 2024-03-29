//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostQrcodeDecode400Response {
  /// Returns a new [PostQrcodeDecode400Response] instance.
  PostQrcodeDecode400Response({
    required this.message,
  });

  /// An information message
  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostQrcodeDecode400Response &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode);

  @override
  String toString() => 'PostQrcodeDecode400Response[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [PostQrcodeDecode400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostQrcodeDecode400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostQrcodeDecode400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostQrcodeDecode400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostQrcodeDecode400Response(
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<PostQrcodeDecode400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostQrcodeDecode400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostQrcodeDecode400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostQrcodeDecode400Response> mapFromJson(dynamic json) {
    final map = <String, PostQrcodeDecode400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostQrcodeDecode400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostQrcodeDecode400Response-objects as value to a dart map
  static Map<String, List<PostQrcodeDecode400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostQrcodeDecode400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostQrcodeDecode400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
  };
}

