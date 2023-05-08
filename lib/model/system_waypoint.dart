//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class SystemWaypoint {
  /// Returns a new [SystemWaypoint] instance.
  SystemWaypoint({
    required this.symbol,
    required this.type,
    required this.x,
    required this.y,
  });

  String symbol;

  WaypointType type;

  int x;

  int y;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemWaypoint &&
          other.symbol == symbol &&
          other.type == type &&
          other.x == x &&
          other.y == y;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (symbol.hashCode) + (type.hashCode) + (x.hashCode) + (y.hashCode);

  @override
  String toString() => 'SystemWaypoint[symbol=$symbol, type=$type, x=$x, y=$y]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'symbol'] = this.symbol;
    json[r'type'] = this.type;
    json[r'x'] = this.x;
    json[r'y'] = this.y;
    return json;
  }

  /// Returns a new [SystemWaypoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SystemWaypoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "SystemWaypoint[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "SystemWaypoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SystemWaypoint(
        symbol: mapValueOfType<String>(json, r'symbol')!,
        type: WaypointType.fromJson(json[r'type'])!,
        x: mapValueOfType<int>(json, r'x')!,
        y: mapValueOfType<int>(json, r'y')!,
      );
    }
    return null;
  }

  static List<SystemWaypoint>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SystemWaypoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SystemWaypoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SystemWaypoint> mapFromJson(dynamic json) {
    final map = <String, SystemWaypoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemWaypoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SystemWaypoint-objects as value to a dart map
  static Map<String, List<SystemWaypoint>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SystemWaypoint>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SystemWaypoint.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'symbol',
    'type',
    'x',
    'y',
  };
}
