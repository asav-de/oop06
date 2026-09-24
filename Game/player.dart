import 'damageable.dart';

/// The player character, which has several lives and a score.
class Player extends Damageable {
  Player({
    required super.name,
    required super.maxHealth,
    required super.posX,
    required super.posY,
    required this._liveRemaining,
    required this._score,
  });
  int _score;
  int _liveRemaining;

  @override
  void onKilled() {
    _liveRemaining -= 1;
    despawn();
    if (_liveRemaining > 0) resetHealth();
  }

  int get getScore => this._score;
  int get getLiveRemaining => this._liveRemaining;
}
