// ignore_for_file: avoid_print

import 'package:intl/intl.dart';
import 'package:spacetraders_dart/spacetraders_dart.dart';
import 'package:tabular/tabular.dart';

void main(List<String> args) async {
  await printStatus();
}

Future<void> printStatus() async {
  final nf = NumberFormat('#,##0');
  final status = await defaultApiClient.gameStatus();

  print('# status');
  print('');
  print(status.status);

  final stats = [
    ['stat', '#'],
    ['agents', nf.format(status.stats.agents)],
    ['ships', nf.format(status.stats.ships)],
    ['systems', nf.format(status.stats.systems)],
    ['waypoints', nf.format(status.stats.waypoints)]
  ];

  print('');
  print('# stats');
  print('');
  print(tabular(stats, align: <String, Side>{'#': Side.end}));

  print('');
  print('# most credits');
  print('');
  final credits = List<List<String>>.from(<List<String>>[
    ['agent', 'credits'],
    ...status.leaderboards.mostCredits
        .map((mc) => [mc.agentSymbol, nf.format(mc.credits)])
  ], growable: false);
  print(tabular(credits, align: <String, Side>{'credits': Side.end}));

  print('');
  print('# most submitted charts');
  print('');
  final charts = List<List<String>>.from(<List<String>>[
    ['agent', 'count'],
    ...status.leaderboards.mostSubmittedCharts
        .map((mc) => [mc.agentSymbol, nf.format(mc.chartCount)])
  ], growable: false);
  print(tabular(charts, align: <String, Side>{'count': Side.end}));
}
