import 'package:flame/components.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/options_overlay.dart';
import 'package:space_simulation/scene/utils/planet.dart';
import 'package:space_simulation/scene/utils/planet_info.dart';

class AppendPlanetButton extends StatelessWidget {
  final FlameGame solarSystem;
  const AppendPlanetButton({super.key, required this.solarSystem});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        if (int.parse(PlanetInfo.type.text) >= 1 &&
            int.parse(PlanetInfo.type.text) <= 3) {
          final planet = Planet(
              solarSystem.size[0] / 2 + int.parse(PlanetInfo.distance.text),
              solarSystem.size[1] / 2 + int.parse(PlanetInfo.distance.text),
              double.parse(PlanetInfo.size.text),
              double.parse(PlanetInfo.size.text),
              int.parse(PlanetInfo.type.text),
              1);
          solarSystem.add(planet);
          Navigator.pop(context, SolarSystem());
        }
      },
      child: const Text("add"),
    );
  }
}
