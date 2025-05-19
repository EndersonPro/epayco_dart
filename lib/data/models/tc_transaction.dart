class TcTransaction {
  final String value;
  final String docType;
  final String docNumber;
  final String name;
  final String lastName;
  final String email;
  final String cellPhone;
  final String phone;
  final String cardNumber;
  final String cardExpYear;
  final String cardExpMonth;
  final String cardCvc;
  final String dues;
  final String? cardTokenId;
  final String? urlResponse;
  final String? urlConfirmation;
  final String? methodConfirmation;
  final bool? testMode;
  final String extra1;
  final String extra2;
  final String? currency;

  TcTransaction({
    required this.value,
    required this.docType,
    required this.docNumber,
    required this.name,
    required this.lastName,
    required this.email,
    required this.cellPhone,
    required this.phone,
    required this.cardNumber,
    required this.cardExpYear,
    required this.cardExpMonth,
    required this.cardCvc,
    required this.dues,
    this.cardTokenId,
    this.urlResponse,
    this.urlConfirmation,
    this.methodConfirmation,
    this.testMode,
    required this.extra1,
    required this.extra2,
    this.currency,
  });

  factory TcTransaction.fromJson(Map<String, dynamic> json) => TcTransaction(
        value: json["value"],
        docType: json["docType"],
        docNumber: json["docNumber"],
        name: json["name"],
        lastName: json["lastName"],
        email: json["email"],
        cellPhone: json["cellPhone"],
        phone: json["phone"],
        cardNumber: json["cardNumber"],
        cardExpYear: json["cardExpYear"],
        cardExpMonth: json["cardExpMonth"],
        cardCvc: json["cardCvc"],
        dues: json["dues"],
        cardTokenId: json["cardTokenId"],
        urlResponse: json["urlResponse"],
        urlConfirmation: json["urlConfirmation"],
        methodConfirmation: json["methodConfirmation"],
        testMode: json["testMode"],
        extra1: json["extra1"],
        extra2: json["extra2"],
        currency: json["currency"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "docType": docType,
        "docNumber": docNumber,
        "name": name,
        "lastName": lastName,
        "email": email,
        "cellPhone": cellPhone,
        "phone": phone,
        "cardNumber": cardNumber,
        "cardExpYear": cardExpYear,
        "cardExpMonth": cardExpMonth,
        "cardCvc": cardCvc,
        "dues": dues,
        "_cardTokenId": cardTokenId,
        "urlResponse": urlResponse,
        "urlConfirmation": urlConfirmation,
        "methodConfirmation": methodConfirmation,
        "testMode": testMode,
        "extra1": extra1,
        "extra2": extra2,
        "currency": currency,
      };

  @override
  String toString() {
    return toJson().toString();
  }
}
