import 'package:axolotl/app/core/models/axolotl_fact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Create empty AxolotlFact', () {
    final fact = AxolotlFact.fromJson({});

    expect(fact.url, '');
    expect(fact.facts, 'We\'re cute! :D');
    expect(fact.picsRepo, '');
    expect(fact.apiRepo, '');
  });

  test('Create AxolotlFact based on JSON', () {
    var json = {
      "url": "https://i.redd.it/gh51nh2sybt61.jpg",
      "facts":
          "Don't touch us too often, you may damage our slime coat and it may hurt.",
      "pics_repo": "https://github.com/AxolotlAPI/data",
      "api_repo": "https://github.com/AxolotlAPI/axolotl.py-api"
    };

    final fact = AxolotlFact.fromJson(json);

    expect(fact.url, 'https://i.redd.it/gh51nh2sybt61.jpg');
    expect(fact.facts,
        "Don't touch us too often, you may damage our slime coat and it may hurt.");
    expect(fact.picsRepo, 'https://github.com/AxolotlAPI/data');
    expect(fact.apiRepo, 'https://github.com/AxolotlAPI/axolotl.py-api');
  });
}
