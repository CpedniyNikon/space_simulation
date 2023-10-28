import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/planet.dart';
import 'package:space_simulation/scene/utils/planet_info.dart';

class OptionsOverlay extends StatelessWidget {
  late FlameGame solarSystem;

  OptionsOverlay({super.key, required this.solarSystem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 180),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(27),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "planet type [1-3]",
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            style: const TextStyle(color: Colors.black),
            controller: PlanetInfo.type,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 180),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(27),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "distance to sun",
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            style: const TextStyle(color: Colors.black),
            controller: PlanetInfo.distance,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 180),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(27),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: "planet size",
              hintStyle: const TextStyle(color: Colors.grey),
            ),
            style: const TextStyle(color: Colors.black),
            controller: PlanetInfo.size,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
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
        ),
      ],
    );
  }
}
