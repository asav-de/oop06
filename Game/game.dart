/// Base class for every object in the game world.
class Game {
  Game({required this.name, required this.posX, required this.posY});

  String name;
  int posX;
  int posY;

  void despawn() {
    this.posX = 0;
    this.posY = 0;
  }
}
