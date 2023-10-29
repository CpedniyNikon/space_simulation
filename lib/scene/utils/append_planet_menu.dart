import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/utils/options_overlay.dart';

class AppendPlanetMenu extends StatelessWidget {
  final FlameGame solarSystem;

  const AppendPlanetMenu({super.key, required this.solarSystem});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            backgroundColor: Colors.transparent,
            title: OptionsOverlay(
              solarSystem: solarSystem,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      child: const Text(
        "add planet",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
