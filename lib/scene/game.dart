import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/append_planet_button.dart';

class MyGame extends StatelessWidget {
  final FlameGame solarSystem = SolarSystem();

  MyGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Stack(
          children: [
            GameWidget(
              game: solarSystem,
            ),
            Positioned(
              top: 10,
              right: 10,
              child: AppendPlanetButton(solarSystem: solarSystem),
            ),
          ],
        ),
      ),
    );
  }
}
