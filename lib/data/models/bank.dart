class Bank {
  final String bankCode;
  final String bankName;

  Bank({
    required this.bankCode,
    required this.bankName,
  });

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      bankCode: json['bankCode'].toString(),
      bankName: json['bankName'],
    );
  }
}
