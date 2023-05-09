import 'package:intl/intl.dart';
import 'package:spacetraders_dart/spacetraders_dart.dart';
import 'package:tabular/tabular.dart';
// import 'package:tabular/tabular.dart';

void main(List<String> args) async {
  // final status = await defaultApiClient.gameStatus();
  final json = '''
{
  "status": "SpaceTraders is currently online and available to play",
  "stats": {
    "agents": 1802,
    "ships": 2833,
    "systems": 5000,
    "waypoints": 25172
  },
  "leaderboards": {
    "mostCredits": [
      {
        "agentSymbol": "FERB287",
        "credits": 79960656
      },
      {
        "agentSymbol": "RIHAN",
        "credits": 71797006
      },
      {
        "agentSymbol": "FEBA0000",
        "credits": 22865909
      },
      {
        "agentSymbol": "MAYLEEN",
        "credits": 4485900
      },
      {
        "agentSymbol": "GILBERVF",
        "credits": 1039988
      }
    ],
    "mostSubmittedCharts": [
      {
        "agentSymbol": "RIHAN",
        "chartCount": 14976
      },
      {
        "agentSymbol": "HEDGEHOG",
        "chartCount": 3216
      },
      {
        "agentSymbol": "FEBA0000",
        "chartCount": 1177
      },
      {
        "agentSymbol": "FEBACHART02",
        "chartCount": 15
      },
      {
        "agentSymbol": "FEBACHART08",
        "chartCount": 13
      }
    ]
  }
}''';
  // todo: check out the `format` and `tabular` packages
  final nf = NumberFormat('#,##0');
  final status = GameStatus200Response.fromJson(json);
  print('status: ${status.status}');

  final stats = [
    ['stat', '#'],
    ['agents', nf.format(status.stats.agents)],
    ['ships', nf.format(status.stats.ships)],
    ['systems', nf.format(status.stats.systems)],
    ['waypoints', nf.format(status.stats.waypoints)]
  ];

  print('');
  print('stats:');
  print(tabular(stats, align: {'#': Side.end}));

  print('');
  print('most credits:');
  final credits = List<List<String>>.from([
    ['agent', 'credits'],
    ...status.leaderboards.mostCredits
        .map((mc) => [mc.agentSymbol, nf.format(mc.credits)])
  ], growable: false);
  print(tabular(credits, align: {'credits': Side.end}));

  print('');
  print('most submitted charts:');
  final charts = List<List<String>>.from([
    ['agent', 'count'],
    ...status.leaderboards.mostSubmittedCharts
        .map((mc) => [mc.agentSymbol, nf.format(mc.chartCount)])
  ], growable: false);
  print(tabular(charts, align: {'count': Side.end}));
}
