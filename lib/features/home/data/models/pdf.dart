class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({
    this.isAvailable,
    this.acsTokenLink,
  });

  Pdf.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'] as bool?;
    acsTokenLink = json['acsTokenLink'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['isAvailable'] = isAvailable;
    json['acsTokenLink'] = acsTokenLink;
    return json;
  }
}