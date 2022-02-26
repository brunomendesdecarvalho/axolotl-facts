import 'package:flutter_modular/flutter_modular.dart';

import 'pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind<Object>> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashPage())
  ];
}
