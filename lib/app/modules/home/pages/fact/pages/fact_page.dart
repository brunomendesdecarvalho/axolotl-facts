import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../../../../core/enums/request_state.dart';
import '../../../../../core/widgets/loader_widget.dart';

import '../fact_controller.dart';
import '../widgets/fact_widget.dart';

class FactPage extends StatefulWidget {
  const FactPage({Key? key}) : super(key: key);

  @override
  State<FactPage> createState() => _FactPageState();
}

class _FactPageState extends State<FactPage> {
  final controller = Modular.get<FactController>();

  @override
  void initState() {
    super.initState();
    controller.getFact();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: RxBuilder(builder: (context) {
            if (controller.state.value == RequestState.SUCCESS) {
              return FactWidget(
                  imageUrl: controller.fact.value.url ?? '',
                  fact: controller.fact.value.facts ?? '',
                  width: width,
                  height: height);
            } else {
              return LoaderWidget(key: Key('factLoader'));
            }
          }),
        ),
      ),
    );
  }
}
