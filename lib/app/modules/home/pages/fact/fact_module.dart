import 'package:flutter_modular/flutter_modular.dart';

import 'fact_controller.dart';
import 'fact_repository.dart';
import 'pages/fact_page.dart';

class FactModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => FactRepository()),
        Bind((i) => FactController(repository: i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: (context, args) => const FactPage()),
      ];
}
