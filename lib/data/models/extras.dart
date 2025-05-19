class ExtraDataTransactionModel {
  final String extra;
  ExtraDataTransactionModel({required this.extra});

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
