import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/planet.dart';

class AppendPlanetButton extends StatelessWidget {
  final FlameGame solarSystem;
  final TextEditingController planetTypeController;
  final TextEditingController planetDistanceController;
  final TextEditingController planetSizeController;

  const AppendPlanetButton({super.key, required this.solarSystem,
    required this.planetTypeController,
    required this.planetDistanceController,
    required this.planetSizeController});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        final planetType = int.parse(planetTypeController.text);
        final planetDistance = double.parse(planetDistanceController.text);
        final planetSize = double.parse(planetSizeController.text);

        if (planetType >= 1 &&
            planetType <= 3) {
          final planet = Planet(
              solarSystem.size[0] / 2 + planetDistance,
              solarSystem.size[1] / 2 + planetDistance,
              planetSize,
              planetSize,
              planetType,
              1.0);
          solarSystem.add(planet);
          Navigator.pop(context, SolarSystem());
        }
      },
      child: const Text("add"),
    );
  }
}
