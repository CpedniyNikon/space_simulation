import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/utils/append_planet_button.dart';
import 'package:space_simulation/scene/utils/planet_data_textfield.dart';

class OptionsOverlay extends StatelessWidget {
  final FlameGame solarSystem;
  final planetTypeController = TextEditingController();
  final planetDistanceController = TextEditingController();
  final planetSizeController = TextEditingController();

  OptionsOverlay({super.key, required this.solarSystem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 240),
          child: PlanetDataTextField(
            title: "planet type [1-3]",
            controller: planetTypeController,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 220),
          child: PlanetDataTextField(
            title: "distance to sun",
            controller: planetDistanceController,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: PlanetDataTextField(
            title: "size of planet",
            controller: planetSizeController,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AppendPlanetButton(
          solarSystem: solarSystem,
          planetTypeController: planetTypeController,
          planetDistanceController: planetDistanceController,
          planetSizeController: planetSizeController,
        ),
      ],
    );
  }
}
