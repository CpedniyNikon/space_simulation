import 'dart:math';

import 'package:flame/components.dart';
import 'package:matrices/matrices.dart';
import 'package:space_simulation/scene/solar_system.dart';

class Planet extends SpriteComponent with HasGameRef<SolarSystem> {
  late Vector2 pos;
  late Vector2 sz;
  late int pt;

  late final double rotationAngle;

  Planet(double x, double y, double szx, double szy, int type, double velocity) : super() {
    pos = Vector2(x, y);
    sz = Vector2(szx, szy);
    pt = type;
    rotationAngle = velocity;
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    switch (pt) {
      case 1:
        sprite = await gameRef.loadSprite('Terran.png');
        break;
      case 2:
        sprite = await gameRef.loadSprite('Lava.png');
        break;
      case 3:
        sprite = await gameRef.loadSprite('Ice.png');
        break;
    }
    size = sz;
    position = Vector2(pos.x-sz.x, pos.y-sz.y);
  }

  @override
  void update(double dt) {
    final sun = gameRef.sun;
    final mat = Matrix.fromList(
      [
        [pos.x - sun.pos.x],
        [pos.y - sun.pos.y],
      ],
    );

    final rotMat = Matrix.fromList([
      [cos(rotationAngle * pi / 180), -sin(rotationAngle * pi / 180)],
      [sin(rotationAngle * pi / 180), cos(rotationAngle * pi / 180)],
    ]);

    final newPos = rotMat * mat;

    pos = Vector2(sun.pos.x + newPos.matrix[0][0],
        sun.pos.y + newPos.matrix[1][0]);

    position = Vector2(pos.x-sz.x/2, pos.y-sz.y/2);
  }
}
