import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:space_shooter_flutter_flame/game/bullet.dart';
import 'package:space_shooter_flutter_flame/game/enemy.dart';
import 'package:space_shooter_flutter_flame/game/explosion.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';
import 'package:space_shooter_flutter_flame/game/state/score_state/score_state.dart';

class Player extends SpriteAnimationComponent
    with
        HasGameRef<SpaceShooterGame>,
        CollisionCallbacks,
        RiverpodComponentMixin {
  Player()
      : super(
          size: Vector2.all(60),
          anchor: Anchor.center,
        );

  late final SpawnComponent _bulletSpawn;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    position = gameRef.size / 2;

    animation = await game.loadSpriteAnimation(
      'starfighter_2.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.2,
        textureSize: Vector2(48, 48),
      ),
    );

    _bulletSpawn = SpawnComponent(
      period: 0.2,
      selfPositioning: true,
      factory: (index) => Bullet(
        position: position + Vector2(0, -height / 2),
      ),
      autoStart: false,
    );

    game.add(_bulletSpawn);

    add(RectangleHitbox());
  }

  @override
  void onCollision(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    super.onCollision(intersectionPoints, other);

    if (other is Enemy) {
      other.removeFromParent();
      game.add(Explosion(position: position));
      ref.read(scoreStateProvider.notifier).reset();
    }
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
