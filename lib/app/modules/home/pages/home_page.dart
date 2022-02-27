import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/styles/typography.dart';
import '../../../core/widgets/buttons/app_flat_button.dart';
import '../../../core/widgets/buttons/app_text_button.dart';

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
              style: AppTypography.hxx,
            ),
          ),
          SizedBox(height: height * .1),
          _goToFactButton(),
          _goToCreditsButton(),
        ],
      );

  _goToFactButton() => AppFlatButton(
      onPressed: () => Modular.to.pushNamed('/home/fact'), text: 'Go');

  _goToCreditsButton() => AppTextButton(
      onPressed: () => Modular.to.pushNamed('/home/credits'), text: 'Credits');
}
