//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class ShipFrame {
  /// Returns a new [ShipFrame] instance.
  ShipFrame({
    required this.symbol,
    required this.name,
    required this.description,
    this.condition,
    required this.moduleSlots,
    required this.mountingPoints,
    required this.fuelCapacity,
    required this.requirements,
  });

  ShipFrameSymbolEnum symbol;

  String name;

  String description;

  /// Condition is a range of 0 to 100 where 0 is completely worn out and 100 is brand new.
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? condition;

  /// Minimum value: 0
  int moduleSlots;

  /// Minimum value: 0
  int mountingPoints;

  /// Minimum value: 0
  int fuelCapacity;

  ShipRequirements requirements;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShipFrame &&
          other.symbol == symbol &&
          other.name == name &&
          other.description == description &&
          other.condition == condition &&
          other.moduleSlots == moduleSlots &&
          other.mountingPoints == mountingPoints &&
          other.fuelCapacity == fuelCapacity &&
          other.requirements == requirements;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (symbol.hashCode) +
      (name.hashCode) +
      (description.hashCode) +
      (condition == null ? 0 : condition!.hashCode) +
      (moduleSlots.hashCode) +
      (mountingPoints.hashCode) +
      (fuelCapacity.hashCode) +
      (requirements.hashCode);

  @override
  String toString() =>
      'ShipFrame[symbol=$symbol, name=$name, description=$description, condition=$condition, moduleSlots=$moduleSlots, mountingPoints=$mountingPoints, fuelCapacity=$fuelCapacity, requirements=$requirements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'symbol'] = this.symbol;
    json[r'name'] = this.name;
    json[r'description'] = this.description;
    if (this.condition != null) {
      json[r'condition'] = this.condition;
    } else {
      json[r'condition'] = null;
    }
    json[r'moduleSlots'] = this.moduleSlots;
    json[r'mountingPoints'] = this.mountingPoints;
    json[r'fuelCapacity'] = this.fuelCapacity;
    json[r'requirements'] = this.requirements;
    return json;
  }

  /// Returns a new [ShipFrame] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShipFrame? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "ShipFrame[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "ShipFrame[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShipFrame(
        symbol: ShipFrameSymbolEnum.fromJson(json[r'symbol'])!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        condition: mapValueOfType<int>(json, r'condition'),
        moduleSlots: mapValueOfType<int>(json, r'moduleSlots')!,
        mountingPoints: mapValueOfType<int>(json, r'mountingPoints')!,
        fuelCapacity: mapValueOfType<int>(json, r'fuelCapacity')!,
        requirements: ShipRequirements.fromJson(json[r'requirements'])!,
      );
    }
    return null;
  }

  static List<ShipFrame>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ShipFrame>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipFrame.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShipFrame> mapFromJson(dynamic json) {
    final map = <String, ShipFrame>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipFrame.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShipFrame-objects as value to a dart map
  static Map<String, List<ShipFrame>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ShipFrame>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShipFrame.listFromJson(
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
    'moduleSlots',
    'mountingPoints',
    'fuelCapacity',
    'requirements',
  };
}

class ShipFrameSymbolEnum {
  /// Instantiate a new enum with the provided [value].
  const ShipFrameSymbolEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PROBE = ShipFrameSymbolEnum._(r'FRAME_PROBE');
  static const DRONE = ShipFrameSymbolEnum._(r'FRAME_DRONE');
  static const INTERCEPTOR = ShipFrameSymbolEnum._(r'FRAME_INTERCEPTOR');
  static const RACER = ShipFrameSymbolEnum._(r'FRAME_RACER');
  static const FIGHTER = ShipFrameSymbolEnum._(r'FRAME_FIGHTER');
  static const FRIGATE = ShipFrameSymbolEnum._(r'FRAME_FRIGATE');
  static const SHUTTLE = ShipFrameSymbolEnum._(r'FRAME_SHUTTLE');
  static const EXPLORER = ShipFrameSymbolEnum._(r'FRAME_EXPLORER');
  static const MINER = ShipFrameSymbolEnum._(r'FRAME_MINER');
  static const LIGHT_FREIGHTER =
      ShipFrameSymbolEnum._(r'FRAME_LIGHT_FREIGHTER');
  static const HEAVY_FREIGHTER =
      ShipFrameSymbolEnum._(r'FRAME_HEAVY_FREIGHTER');
  static const TRANSPORT = ShipFrameSymbolEnum._(r'FRAME_TRANSPORT');
  static const DESTROYER = ShipFrameSymbolEnum._(r'FRAME_DESTROYER');
  static const CRUISER = ShipFrameSymbolEnum._(r'FRAME_CRUISER');
  static const CARRIER = ShipFrameSymbolEnum._(r'FRAME_CARRIER');

  /// List of all possible values in this [enum][ShipFrameSymbolEnum].
  static const values = <ShipFrameSymbolEnum>[
    PROBE,
    DRONE,
    INTERCEPTOR,
    RACER,
    FIGHTER,
    FRIGATE,
    SHUTTLE,
    EXPLORER,
    MINER,
    LIGHT_FREIGHTER,
    HEAVY_FREIGHTER,
    TRANSPORT,
    DESTROYER,
    CRUISER,
    CARRIER,
  ];

  static ShipFrameSymbolEnum? fromJson(dynamic value) =>
      ShipFrameSymbolEnumTypeTransformer().decode(value);

  static List<ShipFrameSymbolEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ShipFrameSymbolEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShipFrameSymbolEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ShipFrameSymbolEnum] to String,
/// and [decode] dynamic data back to [ShipFrameSymbolEnum].
class ShipFrameSymbolEnumTypeTransformer {
  factory ShipFrameSymbolEnumTypeTransformer() =>
      _instance ??= const ShipFrameSymbolEnumTypeTransformer._();

  const ShipFrameSymbolEnumTypeTransformer._();

  String encode(ShipFrameSymbolEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ShipFrameSymbolEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ShipFrameSymbolEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FRAME_PROBE':
          return ShipFrameSymbolEnum.PROBE;
        case r'FRAME_DRONE':
          return ShipFrameSymbolEnum.DRONE;
        case r'FRAME_INTERCEPTOR':
          return ShipFrameSymbolEnum.INTERCEPTOR;
        case r'FRAME_RACER':
          return ShipFrameSymbolEnum.RACER;
        case r'FRAME_FIGHTER':
          return ShipFrameSymbolEnum.FIGHTER;
        case r'FRAME_FRIGATE':
          return ShipFrameSymbolEnum.FRIGATE;
        case r'FRAME_SHUTTLE':
          return ShipFrameSymbolEnum.SHUTTLE;
        case r'FRAME_EXPLORER':
          return ShipFrameSymbolEnum.EXPLORER;
        case r'FRAME_MINER':
          return ShipFrameSymbolEnum.MINER;
        case r'FRAME_LIGHT_FREIGHTER':
          return ShipFrameSymbolEnum.LIGHT_FREIGHTER;
        case r'FRAME_HEAVY_FREIGHTER':
          return ShipFrameSymbolEnum.HEAVY_FREIGHTER;
        case r'FRAME_TRANSPORT':
          return ShipFrameSymbolEnum.TRANSPORT;
        case r'FRAME_DESTROYER':
          return ShipFrameSymbolEnum.DESTROYER;
        case r'FRAME_CRUISER':
          return ShipFrameSymbolEnum.CRUISER;
        case r'FRAME_CARRIER':
          return ShipFrameSymbolEnum.CARRIER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ShipFrameSymbolEnumTypeTransformer] instance.
  static ShipFrameSymbolEnumTypeTransformer? _instance;
}
