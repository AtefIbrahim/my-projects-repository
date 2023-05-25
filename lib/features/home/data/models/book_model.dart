import 'package:bookly/features/home/data/models/access_info.dart';
import 'package:bookly/features/home/data/models/sale_info.dart';
import 'package:bookly/features/home/data/models/search_info.dart';
import 'package:bookly/features/home/data/models/volume_info.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';

class BookModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          bookId: id!,
          image: volumeInfo?.imageLinks?.thumbnail ?? "",
          authorName: volumeInfo?.authors?.first ?? "No Name",
          price: 0.0,
          title: volumeInfo!.title!,
          rating: volumeInfo.averageRating,
        );

  // BookModel.fromJson(Map<String, dynamic> json) {
  //   kind = json['kind'] as String?;
  //   id = json['id'] as String?;
  //   etag = json['etag'] as String?;
  //   selfLink = json['selfLink'] as String?;
  //   volumeInfo = (json['volumeInfo'] as Map<String,dynamic>?) != null ? VolumeInfo.fromJson(json['volumeInfo'] as Map<String,dynamic>) : null;
  //   saleInfo = (json['saleInfo'] as Map<String,dynamic>?) != null ? SaleInfo.fromJson(json['saleInfo'] as Map<String,dynamic>) : null;
  //   accessInfo = (json['accessInfo'] as Map<String,dynamic>?) != null ? AccessInfo.fromJson(json['accessInfo'] as Map<String,dynamic>) : null;
  //   searchInfo = (json['searchInfo'] as Map<String,dynamic>?) != null ? SearchInfo.fromJson(json['searchInfo'] as Map<String,dynamic>) : null;
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> json = <String, dynamic>{};
  //   json['kind'] = kind;
  //   json['id'] = id;
  //   json['etag'] = etag;
  //   json['selfLink'] = selfLink;
  //   json['volumeInfo'] = volumeInfo?.toJson();
  //   json['saleInfo'] = saleInfo?.toJson();
  //   json['accessInfo'] = accessInfo?.toJson();
  //   json['searchInfo'] = searchInfo?.toJson();
  //   return json;
  // }
}
