import 'package:epayco_dart/domain/entities/pse_transaction_entity.dart';

class PSETransactionModel extends PseTransactionEntity {
  PSETransactionModel({
    required super.bank,
    required super.value,
    required super.docType,
    required super.docNumber,
    required super.name,
    super.lastName,
    required super.email,
    required super.cellPhone,
    required super.ip,
    required super.urlResponse,
    super.phone,
    super.address,
    super.currency,
    super.description,
    super.invoice,
    super.methodConfimation,
    super.tax,
    super.taxBase,
    super.typePerson,
    super.urlConfirmation,
    required super.extra1,
    required super.extra2,
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
        ''';
  }
}
