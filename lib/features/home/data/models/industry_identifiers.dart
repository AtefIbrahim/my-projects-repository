class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({
    this.type,
    this.identifier,
  });

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String?;
    identifier = json['identifier'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['type'] = type;
    json['identifier'] = identifier;
    return json;
  }
}