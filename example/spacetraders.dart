import 'package:spacetraders_dart/spacetraders_dart.dart';

void main(List<String> args) async {
  final status = await defaultApiClient.gameStatus();
  print(status);
}
