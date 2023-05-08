//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spacetraders_dart;

class TransferCargoRequest {
  /// Returns a new [TransferCargoRequest] instance.
  TransferCargoRequest({
    required this.tradeSymbol,
    required this.units,
    required this.shipSymbol,
  });

  String tradeSymbol;

  int units;

  String shipSymbol;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransferCargoRequest &&
          other.tradeSymbol == tradeSymbol &&
          other.units == units &&
          other.shipSymbol == shipSymbol;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (tradeSymbol.hashCode) + (units.hashCode) + (shipSymbol.hashCode);

  @override
  String toString() =>
      'TransferCargoRequest[tradeSymbol=$tradeSymbol, units=$units, shipSymbol=$shipSymbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'tradeSymbol'] = this.tradeSymbol;
    json[r'units'] = this.units;
    json[r'shipSymbol'] = this.shipSymbol;
    return json;
  }

  /// Returns a new [TransferCargoRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransferCargoRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key),
              'Required key "TransferCargoRequest[$key]" is missing from JSON.');
          assert(json[key] != null,
              'Required key "TransferCargoRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TransferCargoRequest(
        tradeSymbol: mapValueOfType<String>(json, r'tradeSymbol')!,
        units: mapValueOfType<int>(json, r'units')!,
        shipSymbol: mapValueOfType<String>(json, r'shipSymbol')!,
      );
    }
    return null;
  }

  static List<TransferCargoRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TransferCargoRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TransferCargoRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TransferCargoRequest> mapFromJson(dynamic json) {
    final map = <String, TransferCargoRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransferCargoRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TransferCargoRequest-objects as value to a dart map
  static Map<String, List<TransferCargoRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TransferCargoRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TransferCargoRequest.listFromJson(
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
    'tradeSymbol',
    'units',
    'shipSymbol',
  };
}
