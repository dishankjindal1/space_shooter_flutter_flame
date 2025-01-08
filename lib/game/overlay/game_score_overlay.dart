import 'package:flame/components.dart';
import 'package:flame/palette.dart';
import 'package:flame_riverpod/flame_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:space_shooter_flutter_flame/game/game.dart';
import 'package:space_shooter_flutter_flame/game/state/score_state/score_state.dart';

class GameScoreOverlay extends PositionComponent
    with HasGameRef<SpaceShooterGame>, RiverpodComponentMixin {
  GameScoreOverlay()
      : super(
          anchor: Anchor.center,
        );

  late TextComponent textComponent;

  @override
  void onMount() {
    addToGameWidgetBuild(() {
      ref.listen(scoreStateProvider, (oldValue, newValue) {
        textComponent.text = 'Enemy killed : ${newValue.enemyKilled}';
      });
    });
    super.onMount();
    add(
      textComponent = TextComponent(
          text: 'Enemy killed: 0',
          anchor: Anchor.center,
          position: position + Vector2(gameRef.size.x / 2, 50),
          textRenderer: TextPaint(
            style: TextStyle(
              fontSize: 18,
              color: BasicPalette.white.color,
            ),
          )),
    );
  }
}
