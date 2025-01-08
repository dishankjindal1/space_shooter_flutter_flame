import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/painting.dart';
import 'package:space_shooter_flutter_flame/game/enemy.dart';
import 'package:space_shooter_flutter_flame/game/overlay/game_score_overlay.dart';
import 'package:space_shooter_flutter_flame/game/player.dart';

class SpaceShooterGame extends FlameGame
    with RiverpodGameMixin, PanDetector, HasCollisionDetection {
  late Player player;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    final parallax = await loadParallaxComponent(
      [
        ParallaxImageData('background_start_1.png'),
        ParallaxImageData('background_start_2.png'),
        ParallaxImageData('background_start_3.png'),
      ],
      baseVelocity: Vector2(0, -5),
      repeat: ImageRepeat.repeat,
      velocityMultiplierDelta: Vector2(0, 5),
    );

    add(parallax);

    add(player = Player());

    add(SpawnComponent(
      factory: (index) => Enemy(),
      period: 1,
      area: Rectangle.fromLTWH(0, 0, size.x, -Enemy.enemySize),
    ));

    //Overlay
    add(GameScoreOverlay());
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    player.move(info.delta.global);
  }

  @override
  void onPanStart(DragStartInfo info) {
    player.startShooting();
  }

  @override
  void onPanEnd(DragEndInfo info) {
    player.stopShooting();
  }
}
