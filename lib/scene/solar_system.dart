import 'package:flame/game.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/utils/append_planet_button.dart';
import 'package:space_simulation/scene/utils/background.dart';
import 'package:space_simulation/scene/utils/sun.dart';



class SolarSystem extends FlameGame {
  late Background background;
  late Sun sun;
  late AppendPlanetButton appendPlanetButton;
  late double screenWidth;
  late double screenHeight;



  @override
  Future<void> onLoad() async {
    await super.onLoad();

    screenWidth = size[0];
    screenHeight = size[1];

    background = Background(0, 0);
    sun = Sun(screenWidth / 2, screenHeight / 2);
    appendPlanetButton = AppendPlanetButton(screenWidth - 35, screenHeight - 35);

    add(background);
    add(sun);
    // add(appendPlanetButton);

  }
}


