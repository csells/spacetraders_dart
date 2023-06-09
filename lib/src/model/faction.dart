//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class Faction {
  /// Returns a new [Faction] instance.
  Faction({
    required this.symbol,
    required this.name,
    required this.description,
    required this.headquarters,
    this.traits = const [],
  });

  String symbol;

  String name;

  String description;

  String headquarters;

  List<FactionTrait> traits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Faction &&
          other.symbol == symbol &&
          other.name == name &&
          other.description == description &&
          other.headquarters == headquarters &&
          other.traits == traits;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (symbol.hashCode) +
      (name.hashCode) +
      (description.hashCode) +
      (headquarters.hashCode) +
      (traits.hashCode);

  @override
  String toString() =>
      'Faction[symbol=$symbol, name=$name, description=$description, headquarters=$headquarters, traits=$traits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'symbol'] = this.symbol;
    json[r'name'] = this.name;
    json[r'description'] = this.description;
    json[r'headquarters'] = this.headquarters;
    json[r'traits'] = this.traits;
    return json;
  }

  /// Returns a new [Faction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Faction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "Faction[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "Faction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Faction(
        symbol: mapValueOfType<String>(json, r'symbol')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        headquarters: mapValueOfType<String>(json, r'headquarters')!,
        traits: FactionTrait.listFromJson(json[r'traits'])!,
      );
    }
    return null;
  }

  static List<Faction>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Faction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Faction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Faction> mapFromJson(dynamic json) {
    final map = <String, Faction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Faction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Faction-objects as value to a dart map
  static Map<String, List<Faction>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Faction>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Faction.listFromJson(
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
    'name',
    'description',
    'headquarters',
    'traits',
  };
}
