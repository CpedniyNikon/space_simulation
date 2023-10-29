import 'package:flame/game.dart';
import 'package:space_simulation/scene/utils/background.dart';
import 'package:space_simulation/scene/utils/sun.dart';



class SolarSystem extends FlameGame {
  late Background background;
  late Sun sun;
  late double screenWidth;
  late double screenHeight;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    background = Background(0, 0);
    screenWidth = size[0];
    screenHeight = size[1];
    sun = Sun(screenWidth / 2, screenHeight / 2);

    add(background);
    add(sun);



  }
  @override
  void update(double dt) {
    screenWidth = size[0];
    screenHeight = size[1];
    super.update(dt);
  }
}


