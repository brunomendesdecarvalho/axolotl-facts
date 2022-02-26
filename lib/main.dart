/// ORDEM DOS IMPORTS:
/// Libs do Dart
/// Libs do Flutter
/// Libs 3rd Party
/// Libs 1st Party (nossas)
/// Arquivos fora da pasta do módulo
/// Arquivos do módulo

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}
