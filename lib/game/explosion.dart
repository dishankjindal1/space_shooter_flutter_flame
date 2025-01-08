import 'dart:async';

import 'package:flame/components.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';

class Explosion extends SpriteAnimationComponent
    with HasGameRef<SpaceShooterGame> {
  Explosion({super.position})
      : super(
          size: Vector2.all(150),
          anchor: Anchor.center,
          removeOnFinish: true,
        );

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    animation = await game.loadSpriteAnimation(
      'purple_explosion.png',
      SpriteAnimationData.sequenced(
        amount: 4,
        stepTime: 0.2,
        textureSize: Vector2.all(32),
        loop: false,
      ),
    );
  }
}
