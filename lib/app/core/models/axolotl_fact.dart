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
    url = json['url'] ?? '';
    facts = json['facts'] ?? 'We\'re cute! :D';
    picsRepo = json['pics_repo'] ?? '';
    apiRepo = json['api_repo'] ?? '';
  }
}
