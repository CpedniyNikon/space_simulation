import 'package:flame/components.dart';
import 'package:space_simulation/scene/solar_system.dart';

class Background extends SpriteComponent with HasGameRef<SolarSystem>{
  late Vector2 pos;

  Background(double x, double y) : super() {
    pos = Vector2(x, y);
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite('space.png');
    size = Vector2(2000,1000  );
    position = pos;
  }

  @override
  void update(double dt) {
    position = Vector2(0, 0);
    // size = Vector2(gameRef.screenWidth, gameRef.screenHeight);
    super.update(dt);
  }
}