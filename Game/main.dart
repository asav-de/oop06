import 'player.dart';
import 'monster.dart';

void main() {
  final p = Player(
    name: 'Hero',
    maxHealth: 100,
    posX: 5,
    posY: 5,
    liveRemaining: 3,
    score: 0,
  );
  final m = Monster(
    name: 'Orc',
    maxHealth: 50,
    posX: 10,
    posY: 10,
    threatLevel: 2,
  );

  m.takeDamage(30);
  print(m.getHealth); // 20
  m.takeDamage(30); // умирает → onKilled → makeNoise + despawn
  print('${m.posX}, ${m.posY}'); // 0, 0

  p.takeDamage(120);
  p.takeDamage(10); // снова onKilled: вторая жизнь потеряна
}
