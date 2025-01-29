import 'package:epayco_dart/domain/entities/extras_entity.dart';

class ExtraDataTransactionModel extends ExtraDataTransactionEntity {
  ExtraDataTransactionModel({required String extra}) : super(extra: extra);

  Map<String, dynamic> toJson(int index) {
    return {
      'extra$index': extra,
    };
  }

  @override
  String toString() {
    return 'ExtraDataTransactionModel(extra: $extra)';
  }
}
