class TcTransactionResponse {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final TcTransactionResponseData? data;

  TcTransactionResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory TcTransactionResponse.fromJson(Map<String, dynamic> json) {
    return TcTransactionResponse(
      success: json['success'],
      titleResponse: json['titleResponse'],
      textResponse: json['textResponse'],
      lastAction: json['lastAction'],
      data: json['data'] != null
          ? TcTransactionResponseData.fromJson(json['data'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['titleResponse'] = titleResponse;
    data['textResponse'] = textResponse;
    data['lastAction'] = lastAction;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class TcTransactionResponseData {
  final Transaction? transaction;
  final TokenCard? tokenCard;

  TcTransactionResponseData({
    this.transaction,
    this.tokenCard,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.transaction != null) {
      data['transaction'] = this.transaction!.toJson();
    }
    if (this.tokenCard != null) {
      data['tokenCard'] = this.tokenCard!.toJson();
    }
    return data;
  }

  factory TcTransactionResponseData.fromJson(Map<String, dynamic> json) {
    return TcTransactionResponseData(
      transaction: json['transaction'] != null
          ? Transaction.fromJson(json['transaction'])
          : null,
      tokenCard: json['tokenCard'] != null
          ? TokenCard.fromJson(json['tokenCard'])
          : null,
    );
  }
}

class TokenCard {
  final String? email;
  final String? cardTokenId;
  final String? customerId;

  TokenCard({
    this.email,
    this.cardTokenId,
    this.customerId,
  });

  factory TokenCard.fromJson(Map<String, dynamic> json) {
    return TokenCard(
      email: json['email'],
      cardTokenId: json['cardTokenId'],
      customerId: json['customerId'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['cardTokenId'] = cardTokenId;
    data['customerId'] = customerId;
    return data;
  }
}

class Transaction {
  final bool? status;
  final bool? success;
  final String? type;
  final TransactionData? data;
  final String? object;

  Transaction({
    this.status,
    this.success,
    this.type,
    this.data,
    this.object,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['success'] = success;
    data['type'] = type;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['object'] = object;
    return data;
  }

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      status: json['status'],
      success: json['success'],
      type: json['type'],
      data:
          json['data'] != null ? TransactionData.fromJson(json['data']) : null,
      object: json['object'],
    );
  }
}

class TransactionData {
  final double? refPayco;
  final String? factura;
  final String? descripcion;
  final double? valor;
  final int? iva;
  final int? ico;
  final int? baseiva;
  final double? valorneto;
  final String? moneda;
  final String? banco;
  final String? estado;
  final String? respuesta;
  final String? autorizacion;
  final String? recibo;
  final DateTime? fecha;
  final String? franquicia;
  final int? codRespuesta;
  final String? codError;
  final String? ip;
  final int? enpruebas;
  final String? tipoDoc;
  final String? documento;
  final String? nombres;
  final String? apellidos;
  final String? email;
  final String? ciudad;
  final String? direccion;
  final String? indPais;
  final String? countryCard;
  final Extras? extras;
  final CcNetworkResponse? ccNetworkResponse;
  final ExtrasEpayco? extrasEpayco;

  TransactionData({
    this.refPayco,
    this.factura,
    this.descripcion,
    this.valor,
    this.iva,
    this.ico,
    this.baseiva,
    this.valorneto,
    this.moneda,
    this.banco,
    this.estado,
    this.respuesta,
    this.autorizacion,
    this.recibo,
    this.fecha,
    this.franquicia,
    this.codRespuesta,
    this.codError,
    this.ip,
    this.enpruebas,
    this.tipoDoc,
    this.documento,
    this.nombres,
    this.apellidos,
    this.email,
    this.ciudad,
    this.direccion,
    this.indPais,
    this.countryCard,
    this.extras,
    this.ccNetworkResponse,
    this.extrasEpayco,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['refPayco'] = refPayco;
    data['factura'] = factura;
    data['descripcion'] = descripcion;
    data['valor'] = valor;
    data['iva'] = iva;
    data['ico'] = ico;
    data['baseiva'] = baseiva;
    data['valorneto'] = valorneto;
    data['moneda'] = moneda;
    data['banco'] = banco;
    data['estado'] = estado;
    data['respuesta'] = respuesta;
    data['autorizacion'] = autorizacion;
    data['recibo'] = recibo;
    data['fecha'] = fecha;
    data['franquicia'] = franquicia;
    data['codRespuesta'] = codRespuesta;
    data['codError'] = codError;
    data['ip'] = ip;
    data['enpruebas'] = enpruebas;
    data['tipoDoc'] = tipoDoc;
    data['documento'] = documento;
    data['nombres'] = nombres;
    data['apellidos'] = apellidos;
    data['email'] = email;
    data['ciudad'] = ciudad;
    data['direccion'] = direccion;
    data['indPais'] = indPais;
    data['countryCard'] = countryCard;
    if (this.extras != null) {
      data['extras'] = this.extras!.toJson();
    }
    if (this.ccNetworkResponse != null) {
      data['ccNetworkResponse'] = this.ccNetworkResponse!.toJson();
    }
    if (this.extrasEpayco != null) {
      data['extrasEpayco'] = this.extrasEpayco!.toJson();
    }
    return data;
  }

  factory TransactionData.fromJson(Map<String, dynamic> json) {
    return TransactionData(
      refPayco: json['refPayco'],
      factura: json['factura'],
      descripcion: json['descripcion'],
      valor: json['valor'],
      iva: json['iva'],
      ico: json['ico'],
      baseiva: json['baseiva'],
      valorneto: json['valorneto'],
      moneda: json['moneda'],
      banco: json['banco'],
      estado: json['estado'],
      respuesta: json['respuesta'],
      autorizacion: json['autorizacion'],
      recibo: json['recibo'],
      fecha: DateTime.parse(json['fecha']),
      franquicia: json['franquicia'],
      codRespuesta: json['codRespuesta'],
      codError: json['codError'],
      ip: json['ip'],
      enpruebas: json['enpruebas'],
      tipoDoc: json['tipoDoc'],
      documento: json['documento'],
      nombres: json['nombres'],
      apellidos: json['apellidos'],
      email: json['email'],
      ciudad: json['ciudad'],
      direccion: json['direccion'],
      indPais: json['indPais'],
      countryCard: json['countryCard'],
      extras: json['extras'] != null ? Extras.fromJson(json['extras']) : null,
      ccNetworkResponse: json['ccNetworkResponse'] != null
          ? CcNetworkResponse.fromJson(json['ccNetworkResponse'])
          : null,
      extrasEpayco: json['extrasEpayco'] != null
          ? ExtrasEpayco.fromJson(json['extrasEpayco'])
          : null,
    );
  }
}

class CcNetworkResponse {
  final String? code;
  final String? message;

  CcNetworkResponse({
    this.code,
    this.message,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    return data;
  }

  factory CcNetworkResponse.fromJson(Map<String, dynamic> json) {
    return CcNetworkResponse(
      code: json['code'],
      message: json['message'],
    );
  }
}

class Extras {
  final String? extra1;
  final String? extra2;
  final String? extra3;
  final String? extra4;
  final String? extra5;
  final String? extra6;
  final String? extra7;
  final String? extra8;
  final String? extra9;
  final String? extra10;

  Extras({
    this.extra1,
    this.extra2,
    this.extra3,
    this.extra4,
    this.extra5,
    this.extra6,
    this.extra7,
    this.extra8,
    this.extra9,
    this.extra10,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['extra1'] = extra1;
    data['extra2'] = extra2;
    data['extra3'] = extra3;
    data['extra4'] = extra4;
    data['extra5'] = extra5;
    data['extra6'] = extra6;
    data['extra7'] = extra7;
    data['extra8'] = extra8;
    data['extra9'] = extra9;
    data['extra10'] = extra10;
    return data;
  }

  factory Extras.fromJson(Map<String, dynamic> json) {
    return Extras(
      extra1: json['extra1'],
      extra2: json['extra2'],
      extra3: json['extra3'],
      extra4: json['extra4'],
      extra5: json['extra5'],
      extra6: json['extra6'],
      extra7: json['extra7'],
      extra8: json['extra8'],
      extra9: json['extra9'],
      extra10: json['extra10'],
    );
  }
}

class ExtrasEpayco {
  final String? extra5;

  ExtrasEpayco({
    this.extra5,
  });

  factory ExtrasEpayco.fromJson(Map<String, dynamic> json) {
    return ExtrasEpayco(
      extra5: json['extra5'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['extra5'] = extra5;
    return data;
  }
}
