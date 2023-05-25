class ListPrice {
  num? amount;
  String? currencyCode;

  ListPrice({
    this.amount,
    this.currencyCode,
  });

  ListPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'] as num?;
    currencyCode = json['currencyCode'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['amount'] = amount;
    json['currencyCode'] = currencyCode;
    return json;
  }
}