class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'] as bool?;
    image = json['image'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['text'] = text;
    json['image'] = image;
    return json;
  }
}