import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Flame.device.fullScreen();
  Flame.device.setPortraitUpOnly();
  final game = SpaceShooterGame();
  runApp(ProviderScope(child: MyGame(game)));
}

class MyGame extends StatelessWidget {
  const MyGame(this.game, {super.key});

  final FlameGame game;

  static final riverpodKey = GlobalKey<RiverpodAwareGameWidgetState>();

  @override
  Widget build(final BuildContext context) {
    return RiverpodAwareGameWidget(
      game: game,
      key: riverpodKey,
    );
  }
}
