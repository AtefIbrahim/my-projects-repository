import 'package:bookly/features/home/data/models/list_price.dart';
import 'package:bookly/features/home/data/models/retail_price.dart';

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  bool? giftable;

  Offers({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.giftable,
  });

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'] as int?;
    listPrice = (json['listPrice'] as Map<String,dynamic>?) != null ? ListPrice.fromJson(json['listPrice'] as Map<String,dynamic>) : null;
    retailPrice = (json['retailPrice'] as Map<String,dynamic>?) != null ? RetailPrice.fromJson(json['retailPrice'] as Map<String,dynamic>) : null;
    giftable = json['giftable'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['finskyOfferType'] = finskyOfferType;
    json['listPrice'] = listPrice?.toJson();
    json['retailPrice'] = retailPrice?.toJson();
    json['giftable'] = giftable;
    return json;
  }
}