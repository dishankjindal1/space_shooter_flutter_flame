import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';

void main() {
  final game = SpaceShooterGame();
  runApp(GameWidget(game: game));
}
