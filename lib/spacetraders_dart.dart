//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library spacetraders_dart;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'src/api_client.dart';
part 'src/api_helper.dart';
part 'src/api_exception.dart';
part 'src/auth/authentication.dart';
part 'src/auth/api_key_auth.dart';
part 'src/auth/oauth.dart';
part 'src/auth/http_basic_auth.dart';
part 'src/auth/http_bearer_auth.dart';

part 'src/api/agents_api.dart';
part 'src/api/contracts_api.dart';
part 'src/api/default_api.dart';
part 'src/api/factions_api.dart';
part 'src/api/fleet_api.dart';
part 'src/api/systems_api.dart';

part 'src/model/accept_contract200_response.dart';
part 'src/model/accept_contract200_response_data.dart';
part 'src/model/agent.dart';
part 'src/model/chart.dart';
part 'src/model/connected_system.dart';
part 'src/model/contract.dart';
part 'src/model/contract_deliver_good.dart';
part 'src/model/contract_payment.dart';
part 'src/model/contract_terms.dart';
part 'src/model/cooldown.dart';
part 'src/model/create_chart201_response.dart';
part 'src/model/create_chart201_response_data.dart';
part 'src/model/create_ship_ship_scan201_response.dart';
part 'src/model/create_ship_ship_scan201_response_data.dart';
part 'src/model/create_ship_system_scan201_response.dart';
part 'src/model/create_ship_system_scan201_response_data.dart';
part 'src/model/create_ship_waypoint_scan201_response.dart';
part 'src/model/create_ship_waypoint_scan201_response_data.dart';
part 'src/model/create_survey201_response.dart';
part 'src/model/create_survey201_response_data.dart';
part 'src/model/deliver_contract200_response.dart';
part 'src/model/deliver_contract200_response_data.dart';
part 'src/model/deliver_contract_request.dart';
part 'src/model/dock_ship200_response.dart';
part 'src/model/extract_resources201_response.dart';
part 'src/model/extract_resources201_response_data.dart';
part 'src/model/extract_resources_request.dart';
part 'src/model/extraction.dart';
part 'src/model/extraction_yield.dart';
part 'src/model/faction.dart';
part 'src/model/faction_trait.dart';
part 'src/model/fulfill_contract200_response.dart';
part 'src/model/game_status200_response.dart';
part 'src/model/get_contract200_response.dart';
part 'src/model/get_contracts200_response.dart';
part 'src/model/get_faction200_response.dart';
part 'src/model/get_factions200_response.dart';
part 'src/model/get_jump_gate200_response.dart';
part 'src/model/get_market200_response.dart';
part 'src/model/get_my_agent200_response.dart';
part 'src/model/get_my_ship200_response.dart';
part 'src/model/get_my_ship_cargo200_response.dart';
part 'src/model/get_my_ships200_response.dart';
part 'src/model/get_ship_cooldown200_response.dart';
part 'src/model/get_ship_nav200_response.dart';
part 'src/model/get_shipyard200_response.dart';
part 'src/model/get_system200_response.dart';
part 'src/model/get_system_waypoints200_response.dart';
part 'src/model/get_systems200_response.dart';
part 'src/model/get_waypoint200_response.dart';
part 'src/model/jettison200_response.dart';
part 'src/model/jettison200_response_data.dart';
part 'src/model/jettison_request.dart';
part 'src/model/jump_gate.dart';
part 'src/model/jump_ship200_response.dart';
part 'src/model/jump_ship200_response_data.dart';
part 'src/model/jump_ship_request.dart';
part 'src/model/market.dart';
part 'src/model/market_trade_good.dart';
part 'src/model/market_transaction.dart';
part 'src/model/meta.dart';
part 'src/model/navigate_ship200_response.dart';
part 'src/model/navigate_ship200_response_data.dart';
part 'src/model/navigate_ship_request.dart';
part 'src/model/orbit_ship200_response.dart';
part 'src/model/orbit_ship200_response_data.dart';
part 'src/model/patch_ship_nav_request.dart';
part 'src/model/purchase_cargo201_response.dart';
part 'src/model/purchase_cargo_request.dart';
part 'src/model/purchase_ship201_response.dart';
part 'src/model/purchase_ship201_response_data.dart';
part 'src/model/purchase_ship_request.dart';
part 'src/model/refuel_ship200_response.dart';
part 'src/model/refuel_ship200_response_data.dart';
part 'src/model/register201_response.dart';
part 'src/model/register201_response_data.dart';
part 'src/model/register_request.dart';
part 'src/model/scanned_ship.dart';
part 'src/model/scanned_ship_engine.dart';
part 'src/model/scanned_ship_frame.dart';
part 'src/model/scanned_ship_mounts_inner.dart';
part 'src/model/scanned_ship_reactor.dart';
part 'src/model/scanned_system.dart';
part 'src/model/scanned_waypoint.dart';
part 'src/model/sell_cargo201_response.dart';
part 'src/model/sell_cargo201_response_data.dart';
part 'src/model/sell_cargo_request.dart';
part 'src/model/ship.dart';
part 'src/model/ship_cargo.dart';
part 'src/model/ship_cargo_item.dart';
part 'src/model/ship_crew.dart';
part 'src/model/ship_engine.dart';
part 'src/model/ship_frame.dart';
part 'src/model/ship_fuel.dart';
part 'src/model/ship_fuel_consumed.dart';
part 'src/model/ship_module.dart';
part 'src/model/ship_mount.dart';
part 'src/model/ship_nav.dart';
part 'src/model/ship_nav_flight_mode.dart';
part 'src/model/ship_nav_route.dart';
part 'src/model/ship_nav_route_waypoint.dart';
part 'src/model/ship_nav_status.dart';
part 'src/model/ship_reactor.dart';
part 'src/model/ship_refine200_response.dart';
part 'src/model/ship_refine200_response_data.dart';
part 'src/model/ship_refine200_response_data_produced_inner.dart';
part 'src/model/ship_refine_request.dart';
part 'src/model/ship_registration.dart';
part 'src/model/ship_requirements.dart';
part 'src/model/ship_role.dart';
part 'src/model/ship_type.dart';
part 'src/model/shipyard.dart';
part 'src/model/shipyard_ship.dart';
part 'src/model/shipyard_ship_types_inner.dart';
part 'src/model/shipyard_transaction.dart';
part 'src/model/survey.dart';
part 'src/model/survey_deposit.dart';
part 'src/model/system.dart';
part 'src/model/system_faction.dart';
part 'src/model/system_type.dart';
part 'src/model/system_waypoint.dart';
part 'src/model/trade_good.dart';
part 'src/model/trade_symbol.dart';
part 'src/model/transfer_cargo200_response.dart';
part 'src/model/transfer_cargo_request.dart';
part 'src/model/waypoint.dart';
part 'src/model/waypoint_faction.dart';
part 'src/model/waypoint_orbital.dart';
part 'src/model/waypoint_trait.dart';
part 'src/model/waypoint_type.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
