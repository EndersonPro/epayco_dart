class PseTransactionResponse {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final PseTransactionData? data;

  PseTransactionResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory PseTransactionResponse.fromJson(Map<String, dynamic> json) =>
      PseTransactionResponse(
        success: json['success'],
        titleResponse: json['titleResponse'],
        textResponse: json['textResponse'],
        lastAction: json['lastAction'],
        data: PseTransactionData.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'titleResponse': titleResponse,
        'textResponse': textResponse,
        'lastAction': lastAction,
        'data': data?.toJson(),
      };
}

class PseTransactionData {
  final int? refPayco;
  final String? factura;
  final String? descripcion;
  final int? valor;
  final int? iva;
  final int? baseiva;
  final String? moneda;
  final String? estado;
  final String? respuesta;
  final String? autorizacion;
  final String? recibo;
  final String? fecha;
  final String? urlbanco;
  final String? transactionId;
  final String? ticketId;

  PseTransactionData({
    this.refPayco,
    this.factura,
    this.descripcion,
    this.valor,
    this.iva,
    this.baseiva,
    this.moneda,
    this.estado,
    this.respuesta,
    this.autorizacion,
    this.recibo,
    this.fecha,
    this.urlbanco,
    this.transactionId,
    this.ticketId,
  });

  factory PseTransactionData.fromJson(Map<String, dynamic> json) =>
      PseTransactionData(
        refPayco: json['ref_payco'],
        factura: json['factura'],
        descripcion: json['descripcion'],
        valor: json['valor'],
        iva: json['iva'],
        baseiva: json['baseiva'],
        moneda: json['moneda'],
        estado: json['estado'],
        respuesta: json['respuesta'],
        autorizacion: json['autorizacion'],
        recibo: json['recibo'],
        fecha: json['fecha'],
        urlbanco: json['urlbanco'],
        transactionId: json['transactionID'],
        ticketId: json['ticketId'],
      );

  Map<String, dynamic> toJson() => {
        'ref_payco': refPayco,
        'factura': factura,
        'descripcion': descripcion,
        'valor': valor,
        'iva': iva,
        'baseiva': baseiva,
        'moneda': moneda,
        'estado': estado,
        'respuesta': respuesta,
        'autorizacion': autorizacion,
        'recibo': recibo,
        'fecha': fecha,
        'urlbanco': urlbanco,
        'transactionId': transactionId,
        'ticketId': ticketId,
      };
}
