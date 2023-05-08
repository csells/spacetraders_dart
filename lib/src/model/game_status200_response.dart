// @dart=2.12

part of spacetraders_dart;

class GameStatus200Response {
  final String status;
  final Stats stats;
  final Leaderboards leaderboards;

  GameStatus200Response({
    required this.status,
    required this.stats,
    required this.leaderboards,
  });

  factory GameStatus200Response.fromJson(String str) =>
      GameStatus200Response.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GameStatus200Response.fromMap(Map<String, dynamic> json) =>
      GameStatus200Response(
        status: json["status"],
        stats: Stats.fromMap(json["stats"]),
        leaderboards: Leaderboards.fromMap(json["leaderboards"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "stats": stats.toMap(),
        "leaderboards": leaderboards.toMap(),
      };
}

class Leaderboards {
  final List<MostCredit> mostCredits;
  final List<MostSubmittedChart> mostSubmittedCharts;

  Leaderboards({
    required this.mostCredits,
    required this.mostSubmittedCharts,
  });

  factory Leaderboards.fromJson(String str) =>
      Leaderboards.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Leaderboards.fromMap(Map<String, dynamic> json) => Leaderboards(
        mostCredits: List<MostCredit>.from(
            json["mostCredits"].map((x) => MostCredit.fromMap(x))),
        mostSubmittedCharts: List<MostSubmittedChart>.from(
            json["mostSubmittedCharts"]
                .map((x) => MostSubmittedChart.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "mostCredits": List<dynamic>.from(mostCredits.map((x) => x.toMap())),
        "mostSubmittedCharts":
            List<dynamic>.from(mostSubmittedCharts.map((x) => x.toMap())),
      };
}

class MostCredit {
  final String agentSymbol;
  final int credits;

  MostCredit({
    required this.agentSymbol,
    required this.credits,
  });

  factory MostCredit.fromJson(String str) =>
      MostCredit.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MostCredit.fromMap(Map<String, dynamic> json) => MostCredit(
        agentSymbol: json["agentSymbol"],
        credits: json["credits"],
      );

  Map<String, dynamic> toMap() => {
        "agentSymbol": agentSymbol,
        "credits": credits,
      };
}

class MostSubmittedChart {
  final String agentSymbol;
  final int chartCount;

  MostSubmittedChart({
    required this.agentSymbol,
    required this.chartCount,
  });

  factory MostSubmittedChart.fromJson(String str) =>
      MostSubmittedChart.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MostSubmittedChart.fromMap(Map<String, dynamic> json) =>
      MostSubmittedChart(
        agentSymbol: json["agentSymbol"],
        chartCount: json["chartCount"],
      );

  Map<String, dynamic> toMap() => {
        "agentSymbol": agentSymbol,
        "chartCount": chartCount,
      };
}

class Stats {
  final int agents;
  final int ships;
  final int systems;
  final int waypoints;

  Stats({
    required this.agents,
    required this.ships,
    required this.systems,
    required this.waypoints,
  });

  factory Stats.fromJson(String str) => Stats.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stats.fromMap(Map<String, dynamic> json) => Stats(
        agents: json["agents"],
        ships: json["ships"],
        systems: json["systems"],
        waypoints: json["waypoints"],
      );

  Map<String, dynamic> toMap() => {
        "agents": agents,
        "ships": ships,
        "systems": systems,
        "waypoints": waypoints,
      };
}
