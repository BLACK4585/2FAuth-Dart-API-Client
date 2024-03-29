//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetTwofaccountsExport200Response {
  /// Returns a new [GetTwofaccountsExport200Response] instance.
  GetTwofaccountsExport200Response({
    required this.app,
    required this.schema,
    required this.datetime,
    this.data = const [],
  });

  /// The export supplier
  String app;

  /// Schema version of the migration
  int schema;

  /// Date and time the migration has been generated
  DateTime datetime;

  /// List of 2FA accounts
  List<Model2FAccountExport> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetTwofaccountsExport200Response &&
    other.app == app &&
    other.schema == schema &&
    other.datetime == datetime &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (app.hashCode) +
    (schema.hashCode) +
    (datetime.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'GetTwofaccountsExport200Response[app=$app, schema=$schema, datetime=$datetime, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'app'] = this.app;
      json[r'schema'] = this.schema;
      json[r'datetime'] = this.datetime.toUtc().toIso8601String();
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [GetTwofaccountsExport200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetTwofaccountsExport200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetTwofaccountsExport200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetTwofaccountsExport200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetTwofaccountsExport200Response(
        app: mapValueOfType<String>(json, r'app')!,
        schema: mapValueOfType<int>(json, r'schema')!,
        datetime: mapDateTime(json, r'datetime', r'')!,
        data: Model2FAccountExport.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<GetTwofaccountsExport200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetTwofaccountsExport200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetTwofaccountsExport200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetTwofaccountsExport200Response> mapFromJson(dynamic json) {
    final map = <String, GetTwofaccountsExport200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetTwofaccountsExport200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetTwofaccountsExport200Response-objects as value to a dart map
  static Map<String, List<GetTwofaccountsExport200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetTwofaccountsExport200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetTwofaccountsExport200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'app',
    'schema',
    'datetime',
    'data',
  };
}

