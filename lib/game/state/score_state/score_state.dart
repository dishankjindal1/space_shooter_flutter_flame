import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:space_shooter_flutter_flame/game/state/score_state/score_state_entity.dart';

part 'score_state.g.dart';

@riverpod
class ScoreState extends _$ScoreState {
  addEnemy() => state = state.copyWith(enemyKilled: state.enemyKilled + 1);
  addTime() => state = state.copyWith(timeSpent: state.timeSpent + 1);
  reset() => ref.invalidateSelf();

  @override
  ScoreStateEntity build() => ScoreStateEntity(enemyKilled: 0, timeSpent: 0);
}
