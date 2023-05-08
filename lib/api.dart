//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/agents_api.dart';
part 'api/contracts_api.dart';
part 'api/default_api.dart';
part 'api/factions_api.dart';
part 'api/fleet_api.dart';
part 'api/systems_api.dart';

part 'model/accept_contract200_response.dart';
part 'model/accept_contract200_response_data.dart';
part 'model/agent.dart';
part 'model/chart.dart';
part 'model/connected_system.dart';
part 'model/contract.dart';
part 'model/contract_deliver_good.dart';
part 'model/contract_payment.dart';
part 'model/contract_terms.dart';
part 'model/cooldown.dart';
part 'model/create_chart201_response.dart';
part 'model/create_chart201_response_data.dart';
part 'model/create_ship_ship_scan201_response.dart';
part 'model/create_ship_ship_scan201_response_data.dart';
part 'model/create_ship_system_scan201_response.dart';
part 'model/create_ship_system_scan201_response_data.dart';
part 'model/create_ship_waypoint_scan201_response.dart';
part 'model/create_ship_waypoint_scan201_response_data.dart';
part 'model/create_survey201_response.dart';
part 'model/create_survey201_response_data.dart';
part 'model/deliver_contract200_response.dart';
part 'model/deliver_contract200_response_data.dart';
part 'model/deliver_contract_request.dart';
part 'model/dock_ship200_response.dart';
part 'model/extract_resources201_response.dart';
part 'model/extract_resources201_response_data.dart';
part 'model/extract_resources_request.dart';
part 'model/extraction.dart';
part 'model/extraction_yield.dart';
part 'model/faction.dart';
part 'model/faction_trait.dart';
part 'model/fulfill_contract200_response.dart';
part 'model/get_contract200_response.dart';
part 'model/get_contracts200_response.dart';
part 'model/get_faction200_response.dart';
part 'model/get_factions200_response.dart';
part 'model/get_jump_gate200_response.dart';
part 'model/get_market200_response.dart';
part 'model/get_my_agent200_response.dart';
part 'model/get_my_ship200_response.dart';
part 'model/get_my_ship_cargo200_response.dart';
part 'model/get_my_ships200_response.dart';
part 'model/get_ship_cooldown200_response.dart';
part 'model/get_ship_nav200_response.dart';
part 'model/get_shipyard200_response.dart';
part 'model/get_system200_response.dart';
part 'model/get_system_waypoints200_response.dart';
part 'model/get_systems200_response.dart';
part 'model/get_waypoint200_response.dart';
part 'model/jettison200_response.dart';
part 'model/jettison200_response_data.dart';
part 'model/jettison_request.dart';
part 'model/jump_gate.dart';
part 'model/jump_ship200_response.dart';
part 'model/jump_ship200_response_data.dart';
part 'model/jump_ship_request.dart';
part 'model/market.dart';
part 'model/market_trade_good.dart';
part 'model/market_transaction.dart';
part 'model/meta.dart';
part 'model/navigate_ship200_response.dart';
part 'model/navigate_ship200_response_data.dart';
part 'model/navigate_ship_request.dart';
part 'model/orbit_ship200_response.dart';
part 'model/orbit_ship200_response_data.dart';
part 'model/patch_ship_nav_request.dart';
part 'model/purchase_cargo201_response.dart';
part 'model/purchase_cargo_request.dart';
part 'model/purchase_ship201_response.dart';
part 'model/purchase_ship201_response_data.dart';
part 'model/purchase_ship_request.dart';
part 'model/refuel_ship200_response.dart';
part 'model/refuel_ship200_response_data.dart';
part 'model/register201_response.dart';
part 'model/register201_response_data.dart';
part 'model/register_request.dart';
part 'model/scanned_ship.dart';
part 'model/scanned_ship_engine.dart';
part 'model/scanned_ship_frame.dart';
part 'model/scanned_ship_mounts_inner.dart';
part 'model/scanned_ship_reactor.dart';
part 'model/scanned_system.dart';
part 'model/scanned_waypoint.dart';
part 'model/sell_cargo201_response.dart';
part 'model/sell_cargo201_response_data.dart';
part 'model/sell_cargo_request.dart';
part 'model/ship.dart';
part 'model/ship_cargo.dart';
part 'model/ship_cargo_item.dart';
part 'model/ship_crew.dart';
part 'model/ship_engine.dart';
part 'model/ship_frame.dart';
part 'model/ship_fuel.dart';
part 'model/ship_fuel_consumed.dart';
part 'model/ship_module.dart';
part 'model/ship_mount.dart';
part 'model/ship_nav.dart';
part 'model/ship_nav_flight_mode.dart';
part 'model/ship_nav_route.dart';
part 'model/ship_nav_route_waypoint.dart';
part 'model/ship_nav_status.dart';
part 'model/ship_reactor.dart';
part 'model/ship_refine200_response.dart';
part 'model/ship_refine200_response_data.dart';
part 'model/ship_refine200_response_data_produced_inner.dart';
part 'model/ship_refine_request.dart';
part 'model/ship_registration.dart';
part 'model/ship_requirements.dart';
part 'model/ship_role.dart';
part 'model/ship_type.dart';
part 'model/shipyard.dart';
part 'model/shipyard_ship.dart';
part 'model/shipyard_ship_types_inner.dart';
part 'model/shipyard_transaction.dart';
part 'model/survey.dart';
part 'model/survey_deposit.dart';
part 'model/system.dart';
part 'model/system_faction.dart';
part 'model/system_type.dart';
part 'model/system_waypoint.dart';
part 'model/trade_good.dart';
part 'model/trade_symbol.dart';
part 'model/transfer_cargo200_response.dart';
part 'model/transfer_cargo_request.dart';
part 'model/waypoint.dart';
part 'model/waypoint_faction.dart';
part 'model/waypoint_orbital.dart';
part 'model/waypoint_trait.dart';
part 'model/waypoint_type.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
