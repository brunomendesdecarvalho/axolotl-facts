import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../../core/styles/typography.dart';
import '../../../core/widgets/buttons/app_flat_button.dart';
import '../../../core/widgets/buttons/app_text_button.dart';
import '../../../core/widgets/buttons/app_ghost_button.dart';

import '../../../core/widgets/input/app_input_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(body: _body(height, context));
  }

  _body(double height, BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Axolotl Facts',
              style: AppTypography.h1,
            ),
          ),
          SizedBox(height: height * .03),
          AppFlatButton(
              onPressed: () => Modular.to.pushNamed('/home/fact'), text: 'Go'),
          AppTextButton(
              onPressed: () => Modular.to.pushNamed('/home/credits'),
              text: 'Credits')
        ],
      );
}
