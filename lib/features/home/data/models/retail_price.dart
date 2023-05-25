class RetailPrice {
  num? amountInMicros;
  String? currencyCode;

  RetailPrice({
    this.amountInMicros,
    this.currencyCode,
  });

  RetailPrice.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'] as num?;
    currencyCode = json['currencyCode'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['amountInMicros'] = amountInMicros;
    json['currencyCode'] = currencyCode;
    return json;
  }
}