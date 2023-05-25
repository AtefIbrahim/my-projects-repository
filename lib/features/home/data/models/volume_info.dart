import 'package:bookly/features/home/data/models/image_links.dart';
import 'package:bookly/features/home/data/models/industry_identifiers.dart';
import 'package:bookly/features/home/data/models/panelization_summary.dart';
import 'package:bookly/features/home/data/models/reading_modes.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  num? averageRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.averageRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    authors = (json['authors'] as List?)?.map((dynamic e) => e as String).toList();
    publisher = json['publisher'] as String?;
    publishedDate = json['publishedDate'] as String?;
    description = json['description'] as String?;
    industryIdentifiers = (json['industryIdentifiers'] as List?)?.map((dynamic e) => IndustryIdentifiers.fromJson(e as Map<String,dynamic>)).toList();
    readingModes = (json['readingModes'] as Map<String,dynamic>?) != null ? ReadingModes.fromJson(json['readingModes'] as Map<String,dynamic>) : null;
    pageCount = json['pageCount'] as int?;
    printType = json['printType'] as String?;
    categories = (json['categories'] as List?)?.map((dynamic e) => e as String).toList();
    maturityRating = json['maturityRating'] as String?;
    averageRating = json['averageRating'] as num?;
    allowAnonLogging = json['allowAnonLogging'] as bool?;
    contentVersion = json['contentVersion'] as String?;
    panelizationSummary = (json['panelizationSummary'] as Map<String,dynamic>?) != null ? PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String,dynamic>) : null;
    imageLinks = (json['imageLinks'] as Map<String,dynamic>?) != null ? ImageLinks.fromJson(json['imageLinks'] as Map<String,dynamic>) : null;
    language = json['language'] as String?;
    previewLink = json['previewLink'] as String?;
    infoLink = json['infoLink'] as String?;
    canonicalVolumeLink = json['canonicalVolumeLink'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    json['authors'] = authors;
    json['publisher'] = publisher;
    json['publishedDate'] = publishedDate;
    json['description'] = description;
    json['industryIdentifiers'] = industryIdentifiers?.map((e) => e.toJson()).toList();
    json['readingModes'] = readingModes?.toJson();
    json['pageCount'] = pageCount;
    json['printType'] = printType;
    json['categories'] = categories;
    json['maturityRating'] = maturityRating;
    json['averageRating'] = averageRating;
    json['allowAnonLogging'] = allowAnonLogging;
    json['contentVersion'] = contentVersion;
    json['panelizationSummary'] = panelizationSummary?.toJson();
    json['imageLinks'] = imageLinks?.toJson();
    json['language'] = language;
    json['previewLink'] = previewLink;
    json['infoLink'] = infoLink;
    json['canonicalVolumeLink'] = canonicalVolumeLink;
    return json;
  }
}