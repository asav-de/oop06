import 'game.dart';

abstract class Damageable extends Game {
  int maxHealth;
  int _health;

  Damageable({
    required super.name,
    required super.posX,
    required super.posY,
    required this.maxHealth,
  }) : _health = maxHealth;

  bool isDeath() {
    return this._health <= 0;
  }

  void takeDamage(int damage) {
    if (isDeath()) return;
    this._health -= damage;
    if (isDeath()) onKilled();
  }

  void resetHealth() => _health = maxHealth;

  void onKilled();

  int get getHealth => _health;
}
