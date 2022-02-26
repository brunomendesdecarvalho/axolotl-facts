import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../../../../core/enums/request_state.dart';
import '../../../../core/models/axolotl_fact.dart';
import 'fact_repository.dart';

class FactController implements Disposable {
  var fact = RxNotifier<AxolotlFact>(AxolotlFact());
  var state = RxNotifier<RequestState>(RequestState.IDLE);

  final FactRepository repository;

  FactController({required this.repository});

  void getFact() async {
    state.value = RequestState.LOADING;
    fact.value = await repository.getFact();
    state.value = RequestState.SUCCESS;
  }

  @override
  void dispose() {}
}
