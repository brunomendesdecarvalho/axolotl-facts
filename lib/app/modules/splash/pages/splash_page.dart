import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/images/app_images.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer _timer = new Timer(const Duration(milliseconds: 2000), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return Scaffold(
      body: Container(
        child: Center(
            child: Image.asset(
          'lib/app/core/images/cute-axolotl-512x512.png',
          width: MediaQuery.of(context).size.width * .6,
        )),
      ),
    );
  }
}
