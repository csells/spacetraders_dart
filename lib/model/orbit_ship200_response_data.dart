//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class OrbitShip200ResponseData {
  /// Returns a new [OrbitShip200ResponseData] instance.
  OrbitShip200ResponseData({
    required this.nav,
  });

  ShipNav nav;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrbitShip200ResponseData && other.nav == nav;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nav.hashCode);

  @override
  String toString() => 'OrbitShip200ResponseData[nav=$nav]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'nav'] = this.nav;
    return json;
  }

  /// Returns a new [OrbitShip200ResponseData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrbitShip200ResponseData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "OrbitShip200ResponseData[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "OrbitShip200ResponseData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrbitShip200ResponseData(
        nav: ShipNav.fromJson(json[r'nav'])!,
      );
    }
    return null;
  }

  static List<OrbitShip200ResponseData>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrbitShip200ResponseData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrbitShip200ResponseData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrbitShip200ResponseData> mapFromJson(dynamic json) {
    final map = <String, OrbitShip200ResponseData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrbitShip200ResponseData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrbitShip200ResponseData-objects as value to a dart map
  static Map<String, List<OrbitShip200ResponseData>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrbitShip200ResponseData>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrbitShip200ResponseData.listFromJson(
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
    'nav',
  };
}
