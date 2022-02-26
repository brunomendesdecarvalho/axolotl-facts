// {
//"url":"https://i.redd.it/gh51nh2sybt61.jpg",
//"facts":"Don't touch us too often, you may damage our slime coat and it may hurt.",
//"pics_repo":"https://github.com/AxolotlAPI/data",
//"api_repo":"https://github.com/AxolotlAPI/axolotl.py-api"
//}

class AxolotlFact {
  String? url;
  String? facts;
  String? picsRepo;
  String? apiRepo;

  AxolotlFact({
    this.url,
    this.facts,
    this.picsRepo,
    this.apiRepo,
  });

  AxolotlFact.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    facts = json['facts'];
    picsRepo = json['pics_repo'];
    apiRepo = json['api_repo'];
  }
}
