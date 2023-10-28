import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/planet.dart';
import 'package:space_simulation/scene/utils/planet_info.dart';

class AppendPlanetButton extends SpriteComponent
    with HasGameRef<SolarSystem>, TapCallbacks {
  late Vector2 pos;

  AppendPlanetButton(double x, double y) : super() {
    pos = Vector2(x, y);
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite('appendButton.png');
    size = Vector2(50, 50);
    position = Vector2(pos.x - 25, pos.y - 25);
  }

  @override
  void onTapDown(TapDownEvent event) {
    super.onTapDown(event);
    if (int.parse(PlanetInfo.type.text) >= 1 &&
        int.parse(PlanetInfo.type.text) <= 3) {
      final planet = Planet(
          gameRef.screenWidth / 2 + int.parse(PlanetInfo.distance.text),
          gameRef.screenHeight / 2 + int.parse(PlanetInfo.distance.text),
          double.parse(PlanetInfo.size.text),
          double.parse(PlanetInfo.size.text),
          int.parse(PlanetInfo.type.text),
          1);
      gameRef.add(planet);
    }
  }
}
