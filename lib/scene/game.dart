import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/solar_system.dart';
import 'package:space_simulation/scene/utils/options_overlay.dart';
import 'package:space_simulation/scene/utils/planet_info.dart';

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
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: Colors.greenAccent,
                      title: OptionsOverlay(
                        solarSystem: solarSystem,
                      ),
                    ),
                  );
                },
                child: const Text("add planet"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
