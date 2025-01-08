import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:space_shooter_flutter_flame/game/bullet.dart';
import 'package:space_shooter_flutter_flame/game/explosion.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';
import 'package:space_shooter_flutter_flame/game/state/score_state/score_state.dart';

class Enemy extends SpriteAnimationComponent
    with
        HasGameRef<SpaceShooterGame>,
        CollisionCallbacks,
        RiverpodComponentMixin {
  Enemy({super.position})
      : super(
          size: Vector2.all(enemySize),
          anchor: Anchor.center,
        );

  static const enemySize = 50.0;

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    animation = await game.loadSpriteAnimation(
      'alien_1.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.2,
        textureSize: Vector2.all(16),
      ),
    );

    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);

    position.y += dt * 250;

    if (position.y > game.size.y) {
      removeFromParent();
    }
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    super.onCollisionStart(intersectionPoints, other);

    if (other is Bullet) {
      removeFromParent();
      other.removeFromParent();
      game.add(Explosion(position: position));
      ref.read(scoreStateProvider.notifier).addEnemy();
    }
  }
}
