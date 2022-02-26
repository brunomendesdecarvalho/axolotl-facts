import 'package:flutter_modular/flutter_modular.dart';

import 'pages/credits_page.dart';
import 'pages/fact/fact_module.dart';
import 'pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (context, args) => HomePage()),
        ChildRoute('/credits', child: (context, args) => CreditsPage()),
        ModuleRoute('/fact', module: FactModule())
      ];
}
