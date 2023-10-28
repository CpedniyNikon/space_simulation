import 'package:flame/game.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/utils/append_planet_button.dart';
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

    screenWidth = size[0];
    screenHeight = size[1];

    background = Background(0, 0);
    sun = Sun(screenWidth / 2, screenHeight / 2);

    add(background);
    add(sun);
    // add(appendPlanetButton);

  }
  @override
  void update(double dt) {
    screenWidth = size[0];
    screenHeight = size[1];
    super.update(dt);
  }
}


