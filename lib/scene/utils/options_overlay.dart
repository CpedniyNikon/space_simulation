import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/append_planet_button.dart';
import 'package:space_simulation/scene/utils/planet.dart';
import 'package:space_simulation/scene/utils/planet_data_textfield.dart';
import 'package:space_simulation/scene/utils/planet_info.dart';

class OptionsOverlay extends StatelessWidget {
  final FlameGame solarSystem;

  const OptionsOverlay({super.key, required this.solarSystem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 240),
          child: PlanetDataTextField(
            title: "planet type [1-3]",
            controller: PlanetInfo.type,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 220),
          child: PlanetDataTextField(
            title: "distance to sun",
            controller: PlanetInfo.distance,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: PlanetDataTextField(
            title: "size of planet",
            controller: PlanetInfo.size,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppendPlanetButton(
          solarSystem: solarSystem,
        ),
      ],
    );
  }
}
