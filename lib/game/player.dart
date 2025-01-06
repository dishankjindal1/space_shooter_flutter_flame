import 'dart:async';

import 'package:flame/components.dart';
import 'package:space_shooter_flutter_flame/game/bullet.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';

class Player extends SpriteAnimationComponent
    with HasGameRef<SpaceShooterGame> {
  Player()
      : super(
          size: Vector2(60, 60),
          anchor: Anchor.center,
        );

  late final SpawnComponent _bulletSpawn;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    animation = await game.loadSpriteAnimation(
        'starfighter_2.png',
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.2, textureSize: Vector2(48, 48)));

    position = gameRef.size / 2;

    _bulletSpawn = SpawnComponent(
      period: 0.2,
      selfPositioning: true,
      factory: (index) {
        return Bullet(
          position: position + Vector2(0, -height / 2),
        );
      },
      autoStart: false,
    );

    game.add(_bulletSpawn);
  }

  void move(Vector2 delta) {
    position.add(delta);
  }

  void startShooting() {
    _bulletSpawn.timer.start();
  }

  void stopShooting() {
    _bulletSpawn.timer.stop();
  }
}
