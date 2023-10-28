import 'package:flame/components.dart';
import 'package:space_simulation/scene/solar_system.dart';

class Sun extends SpriteComponent with HasGameRef<SolarSystem> {
  late Vector2 pos;

  Sun(double x, double y) : super() {
    pos = Vector2(x, y);
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite('SunRed.png');
    size = Vector2(100, 100);
    position = Vector2(pos.x-50, pos.y-50);
  }

  @override
  void update(double dt) {
    pos = Vector2(gameRef.screenWidth / 2, gameRef.screenHeight / 2);
    position = Vector2(pos.x-50, pos.y-50);
    super.update(dt);
  }
}