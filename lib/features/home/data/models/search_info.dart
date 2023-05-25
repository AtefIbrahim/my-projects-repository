class SearchInfo {
  String? textSnippet;

  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['textSnippet'] = textSnippet;
    return json;
  }
}