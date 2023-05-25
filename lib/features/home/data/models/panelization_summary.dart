class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'] as bool?;
    containsImageBubbles = json['containsImageBubbles'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['containsEpubBubbles'] = containsEpubBubbles;
    json['containsImageBubbles'] = containsImageBubbles;
    return json;
  }
}