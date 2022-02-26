import 'package:dio/dio.dart';

import '../../../../core/models/axolotl_fact.dart';
import '../../../../core/network/api_url.dart';

class FactRepository {
  Future<AxolotlFact> getFact() async {
    var response = await Dio().get(ApiUrl.mainUrl);
    return AxolotlFact.fromJson(response.data);
  }
}
