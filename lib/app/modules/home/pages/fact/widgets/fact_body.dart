import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/styles/typography.dart';
import '../../../../../core/widgets/buttons/app_flat_button.dart';
import '../fact_controller.dart';

class FactWidget extends StatefulWidget {
  const FactWidget({
    Key? key,
    required this.controller,
    required this.width,
    required this.height,
  }) : super(key: key);

  final FactController controller;
  final double width;
  final double height;

  @override
  State<FactWidget> createState() => _FactWidgetState();
}

class _FactWidgetState extends State<FactWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Axolotl Fact',
            style: AppTypography.h1,
          ),
        ),
        FadeInImage.assetNetwork(
          placeholder: 'lib/app/core/images/loading.gif',
          image: '${widget.controller.fact.value.url}',
          width: widget.width * .7,
        ),
        Text(
          '${widget.controller.fact.value.facts}',
          style: AppTypography.h1,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: widget.height * .03),
        AppFlatButton(
            onPressed: () => Modular.to.pushNamed('/home/fact'), text: 'Next'),
      ],
    );
  }
}
