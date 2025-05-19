class PSETransactionModel {
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
  final String? address;
  final String? currency;
  final String? description;
  final String? invoice;
  final String? methodConfimation;
  final String? tax;
  final String? taxBase;
  final String? typePerson;
  final String? urlConfirmation;
  final String extra1;
  final String extra2;
  final bool? testMode;

  PSETransactionModel({
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
    this.address,
    this.currency,
    this.description,
    this.invoice,
    this.methodConfimation,
    this.tax,
    this.taxBase,
    this.typePerson,
    this.urlConfirmation,
    required this.extra1,
    required this.extra2,
    this.testMode,
  });

  factory PSETransactionModel.fromJson(Map<String, dynamic> json) =>
      PSETransactionModel(
        bank: json['bank'],
        value: json['value'],
        docType: json['docType'],
        docNumber: json['docNumber'],
        name: json['name'],
        lastName: json['lastName'],
        email: json['email'],
        cellPhone: json['cellPhone'],
        ip: json['ip'],
        urlResponse: json['urlResponse'],
        phone: json['phone'],
        address: json['address'],
        currency: json['currency'],
        description: json['description'],
        invoice: json['invoice'],
        methodConfimation: json['methodConfimation'],
        tax: json['tax'],
        taxBase: json['taxBase'],
        typePerson: json['typePerson'],
        urlConfirmation: json['urlConfirmation'],
        extra1: json['extra1'],
        extra2: json['extra2'],
        testMode: json['testMode'],
      );

  Map<String, dynamic> toJson() => {
        'bank': bank,
        'value': value,
        'docType': docType,
        'docNumber': docNumber,
        'name': name,
        'lastName': lastName,
        'email': email,
        'cellPhone': cellPhone,
        'ip': ip,
        'urlResponse': urlResponse,
        'phone': phone,
        'address': address,
        'currency': currency,
        'description': description,
        'invoice': invoice,
        'methodConfimation': methodConfimation,
        'tax': tax,
        'taxBase': taxBase,
        'typePerson': typePerson,
        'urlConfirmation': urlConfirmation,
        'extra1': extra1,
        'extra2': extra2,
        'testMode': testMode,
      };

  @override
  String toString() {
    return '''PSETransactionModel:
        bank: $bank, 
        value: $value, 
        docType: $docType, 
        docNumber: $docNumber, 
        name: $name, 
        lastName: $lastName, 
        email: $email, 
        cellPhone: $cellPhone, 
        ip: $ip, 
        urlResponse: $urlResponse, 
        phone: $phone, 
        address: $address, 
        currency: $currency, 
        description: $description, 
        invoice: $invoice, 
        methodConfimation: $methodConfimation, 
        tax: $tax, 
        taxBase: $taxBase, 
        typePerson: $typePerson, 
        urlConfirmation: $urlConfirmation
        extra1: $extra1
        extra2: $extra2
        testMode: $testMode
        ''';
  }
}
