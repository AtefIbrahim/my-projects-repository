class Epub {
  bool? isAvailable;

  Epub({
    this.isAvailable,
  });

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['isAvailable'] = isAvailable;
    return json;
  }
}