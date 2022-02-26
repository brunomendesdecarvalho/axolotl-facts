import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/styles/typography.dart';
import '../../../core/widgets/buttons/app_flat_button.dart';

class CreditsPage extends StatefulWidget {
  const CreditsPage({Key? key}) : super(key: key);

  @override
  State<CreditsPage> createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(body: _body(height, width));
  }

  _body(double height, double width) => Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Credits',
                style: AppTypography.hx,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .1),
              child: Text(
                'Axolotl API\'s Github repository',
                style: AppTypography.h1.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .01),
              child: SelectableText(
                'https://github.com/AxolotlAPI/axolotl.py-api',
                style: AppTypography.bodyEmphasis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .02),
              child: Text(
                'Pictures',
                style: AppTypography.h1.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .01),
              child: SelectableText(
                'https://github.com/AxolotlAPI/data',
                style: AppTypography.bodyEmphasis,
              ),
            ),
            SizedBox(height: height * .1),
            Center(
              child: AppFlatButton(
                onPressed: () => Modular.to.pop(),
                text: 'Back',
                leftIcon: Icons.arrow_back_ios_new,
              ),
            ),
          ],
        ),
      );
}
