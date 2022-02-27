import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/styles/typography.dart';
import '../../../../../core/widgets/buttons/app_flat_button.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';
import '../fact_controller.dart';

class FactWidget extends StatefulWidget {
  const FactWidget({
    Key? key,
    required this.imageUrl,
    required this.fact,
    required this.width,
    required this.height,
  }) : super(key: key);

  final String imageUrl;
  final String fact;
  final double width;
  final double height;

  @override
  State<FactWidget> createState() => _FactWidgetState();
}

class _FactWidgetState extends State<FactWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(height: widget.height * .02),
        _title(),
        SizedBox(height: widget.height * .05),
        _image(),
        SizedBox(height: widget.height * .05),
        _factBody(),
        SizedBox(height: widget.height * .03),
        _nextButton(),
        _backToHomeButton(),
      ]),
    );
  }

  _title() => Center(
        child: Text(
          'Axolotl Fact',
          key: Key('title'),
          style: AppTypography.hx,
        ),
      );

  _image() => FadeInImage.assetNetwork(
        key: Key('image'),
        placeholder: 'lib/app/core/images/loading.gif',
        image: '$widget.imageUrl',
        width: widget.width * .8,
      );

  _factBody() => Padding(
        padding: EdgeInsets.symmetric(horizontal: widget.width * .02),
        child: Text(
          '$widget.fact',
          key: Key('factBody'),
          style: AppTypography.h1,
          textAlign: TextAlign.center,
        ),
      );

  _nextButton() => AppFlatButton(
      key: Key('nextButton'),
      onPressed: () => Modular.to.pushNamed('/home/fact'),
      text: 'Next');

  _backToHomeButton() => AppTextButton(
      key: Key('backButton'),
      onPressed: () => Modular.to.popUntil(ModalRoute.withName('/home')),
      text: 'Back to Home');
}
