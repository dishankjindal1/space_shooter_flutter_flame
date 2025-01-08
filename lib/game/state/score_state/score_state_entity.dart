import 'package:freezed_annotation/freezed_annotation.dart';

part 'score_state_entity.freezed.dart';

@Freezed(
  
)
class ScoreStateEntity with _$ScoreStateEntity {
  const factory ScoreStateEntity({
    required int enemyKilled,
    required int timeSpent,
  }) = _ScoreStateEntity;
}
