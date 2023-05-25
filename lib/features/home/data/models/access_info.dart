import 'package:bookly/features/home/data/models/epub.dart';
import 'package:bookly/features/home/data/models/pdf.dart';

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'] as String?;
    viewability = json['viewability'] as String?;
    embeddable = json['embeddable'] as bool?;
    publicDomain = json['publicDomain'] as bool?;
    textToSpeechPermission = json['textToSpeechPermission'] as String?;
    epub = (json['epub'] as Map<String,dynamic>?) != null ? Epub.fromJson(json['epub'] as Map<String,dynamic>) : null;
    pdf = (json['pdf'] as Map<String,dynamic>?) != null ? Pdf.fromJson(json['pdf'] as Map<String,dynamic>) : null;
    webReaderLink = json['webReaderLink'] as String?;
    accessViewStatus = json['accessViewStatus'] as String?;
    quoteSharingAllowed = json['quoteSharingAllowed'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['country'] = country;
    json['viewability'] = viewability;
    json['embeddable'] = embeddable;
    json['publicDomain'] = publicDomain;
    json['textToSpeechPermission'] = textToSpeechPermission;
    json['epub'] = epub?.toJson();
    json['pdf'] = pdf?.toJson();
    json['webReaderLink'] = webReaderLink;
    json['accessViewStatus'] = accessViewStatus;
    json['quoteSharingAllowed'] = quoteSharingAllowed;
    return json;
  }
}