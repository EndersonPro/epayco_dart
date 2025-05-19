import 'package:epayco_dart/data/models/document.dart';

class GetDocumentTypes {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final List<Document>? data;

  GetDocumentTypes({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory GetDocumentTypes.fromJson(Map<String, dynamic> json) {
    return GetDocumentTypes(
      success: json['success'],
      titleResponse: json['titleResponse'],
      textResponse: json['textResponse'],
      lastAction: json['lastAction'],
      data: json['data'] != null
          ? (json['data'] as List).map((e) => Document.fromJson(e)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'titleResponse': titleResponse,
      'textResponse': textResponse,
      'lastAction': lastAction,
      'data': data?.map((e) => (e as Document).toJson()).toList(),
    };
  }
}
