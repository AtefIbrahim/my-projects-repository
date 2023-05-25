import 'package:bookly/features/home/data/models/list_price.dart';
import 'package:bookly/features/home/data/models/offers.dart';
import 'package:bookly/features/home/data/models/retail_price.dart';

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'] as String?;
    saleability = json['saleability'] as String?;
    isEbook = json['isEbook'] as bool?;
    listPrice = (json['listPrice'] as Map<String,dynamic>?) != null ? ListPrice.fromJson(json['listPrice'] as Map<String,dynamic>) : null;
    retailPrice = (json['retailPrice'] as Map<String,dynamic>?) != null ? RetailPrice.fromJson(json['retailPrice'] as Map<String,dynamic>) : null;
    buyLink = json['buyLink'] as String?;
    offers = (json['offers'] as List?)?.map((dynamic e) => Offers.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['country'] = country;
    json['saleability'] = saleability;
    json['isEbook'] = isEbook;
    json['listPrice'] = listPrice?.toJson();
    json['retailPrice'] = retailPrice?.toJson();
    json['buyLink'] = buyLink;
    json['offers'] = offers?.map((e) => e.toJson()).toList();
    return json;
  }
}