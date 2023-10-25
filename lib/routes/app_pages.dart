import 'package:space_simulation/routes/routes.dart';
import 'package:space_simulation/scene/main_scene.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => const MainScene(),
    ),

  ];
}
