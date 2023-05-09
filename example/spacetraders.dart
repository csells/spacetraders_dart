import 'package:intl/intl.dart';
import 'package:spacetraders_dart/spacetraders_dart.dart';
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
  final formatter = NumberFormat('#,##0');
  final status = GameStatus200Response.fromJson(json);
  print('status: ${status.status}');
  print('');

  print('agents: ${formatter.format(status.stats.agents)}');
  print('ships: ${formatter.format(status.stats.ships)}');
  print('systems: ${formatter.format(status.stats.systems)}');
  print('waypoints: ${formatter.format(status.stats.waypoints)}');
  print('');

  print('most credits: (agent: credits)');
  for (final mc in status.leaderboards.mostCredits) {
    final formatted = formatter.format(mc.credits);
    print('  ${mc.agentSymbol}: $formatted');
  }
  print('');

  print('most submitted charts: (agent: chart count)');
  for (final msc in status.leaderboards.mostSubmittedCharts) {
    final formatted = formatter.format(msc.chartCount);
    print('  ${msc.agentSymbol}: $formatted');
  }
}
