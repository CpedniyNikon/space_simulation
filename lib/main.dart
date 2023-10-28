import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:space_simulation/scene/game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyGame(),
  )
  );
}
