import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'core/styles/themes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Axolotl',
      theme: AppTheme.appTheme(),
      darkTheme: AppTheme.appTheme(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
