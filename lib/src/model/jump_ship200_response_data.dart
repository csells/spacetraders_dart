//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class JumpShip200ResponseData {
  /// Returns a new [JumpShip200ResponseData] instance.
  JumpShip200ResponseData({
    required this.cooldown,
    this.nav,
  });

  Cooldown cooldown;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ShipNav? nav;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JumpShip200ResponseData &&
          other.cooldown == cooldown &&
          other.nav == nav;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (cooldown.hashCode) + (nav == null ? 0 : nav!.hashCode);

  @override
  String toString() => 'JumpShip200ResponseData[cooldown=$cooldown, nav=$nav]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'cooldown'] = this.cooldown;
    if (this.nav != null) {
      json[r'nav'] = this.nav;
    } else {
      json[r'nav'] = null;
    }
    return json;
  }

  /// Returns a new [JumpShip200ResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JumpShip200ResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "JumpShip200ResponseData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "JumpShip200ResponseData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JumpShip200ResponseData(
        cooldown: Cooldown.fromJson(json[r'cooldown'])!,
        nav: ShipNav.fromJson(json[r'nav']),
      );
    }
    return null;
  }

  static List<JumpShip200ResponseData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <JumpShip200ResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JumpShip200ResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JumpShip200ResponseData> mapFromJson(dynamic json) {
    final map = <String, JumpShip200ResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JumpShip200ResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JumpShip200ResponseData-objects as value to a dart map
  static Map<String, List<JumpShip200ResponseData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<JumpShip200ResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JumpShip200ResponseData.listFromJson(
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
    'cooldown',
  };
}
