import 'damageable.dart';

/// The colours a [Monster] can have.
enum Color { green, red, blue, black }

/// An enemy with a threat level and a colour.
class Monster extends Damageable {
  Monster({
    required super.name,
    required super.maxHealth,
    required super.posX,
    required super.posY,
    required this._threatLevel,
    this._color = Color.green,
  });

  int _threatLevel;
  Color _color;

  String makeNoise() {
    return ('bbbbppppprrrrrhhhhh...');
  }

  @override
  void onKilled() {
    this.color = Color.red;
    print(makeNoise());
    despawn();
  }

  set color(Color value) => _color = value;
  Color get getColor => this._color;
  int get getThreatLevel => this._threatLevel;
}
