class PseTransactionEntity {
  final String bank;
  final String value;
  final String docType;
  final String docNumber;
  final String name;
  final String? lastName;
  final String email;
  final String cellPhone;
  final String ip;
  final String urlResponse;
  final String? phone;
  final String? tax;
  final String? taxBase;
  final String? description;
  final String? invoice;
  final String? currency;
  final String? typePerson;
  final String? address;
  final String? urlConfirmation;
  final String? methodConfimation;
  final String extra1;
  final String extra2;

  PseTransactionEntity({
    required this.bank,
    required this.value,
    required this.docType,
    required this.docNumber,
    required this.name,
    this.lastName,
    required this.email,
    required this.cellPhone,
    required this.ip,
    required this.urlResponse,
    this.phone,
    this.tax,
    this.taxBase,
    this.description,
    this.invoice,
    this.currency,
    this.typePerson,
    this.address,
    this.urlConfirmation,
    this.methodConfimation,
    required this.extra1,
    required this.extra2,
  });
}
