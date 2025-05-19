import 'package:epayco_dart/data/models/bank.dart';

class GetBanksResponse {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final List<Bank>? data;

  GetBanksResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory GetBanksResponse.fromJson(Map<String, dynamic> json) {
    return GetBanksResponse(
      success: json['success'],
      titleResponse: json['title_response'],
      textResponse: json['text_response'],
      lastAction: json['last_action'],
      data: json['data'] != null
          ? List<Bank>.from(json['data'].map((x) => Bank.fromJson(x)))
          : null,
    );
  }
}
