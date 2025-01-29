class PseConfirmTransactionResponse {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final Data? data;

  PseConfirmTransactionResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory PseConfirmTransactionResponse.fromJson(Map<String, dynamic> json) =>
      PseConfirmTransactionResponse(
        success: json['success'],
        titleResponse: json['titleResponse'],
        textResponse: json['textResponse'],
        lastAction: json['lastAction'],
        data: Data.fromJson(json['data']),
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'titleResponse': titleResponse,
        'textResponse': textResponse,
        'lastAction': lastAction,
        'data': data?.toJson(),
      };

  @override
  String toString() {
    return 'PseConfirmTransactionResponse(success: $success, titleResponse: $titleResponse, textResponse: $textResponse, lastAction: $lastAction, data: $data)';
  }
}

class Data {
  final int? refPayco;
  final String? factura;
  final String? descripcion;
  final int? valor;
  final int? iva;
  final int? baseiva;
  final String? moneda;
  final String? banco;
  final String? estado;
  final String? respuesta;
  final String? autorizacion;
  final String? recibo;
  final DateTime? fecha;
  final String? franquicia;
  final int? codRespuesta;
  final String? ip;
  final int? enpruebas;
  final String? tipoDoc;
  final String? documento;
  final String? nombres;
  final String? apellidos;
  final String? email;
  final String? ciudad;
  final String? direccion;
  final dynamic indPais;
  final String? transactionId;
  final int? ticketId;

  Data({
    this.refPayco,
    this.factura,
    this.descripcion,
    this.valor,
    this.iva,
    this.baseiva,
    this.moneda,
    this.banco,
    this.estado,
    this.respuesta,
    this.autorizacion,
    this.recibo,
    this.fecha,
    this.franquicia,
    this.codRespuesta,
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
    this.transactionId,
    this.ticketId,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        refPayco: json['ref_payco'],
        factura: json['factura'],
        descripcion: json['descripcion'],
        valor: json['valor'],
        iva: json['iva'],
        baseiva: json['baseiva'],
        moneda: json['moneda'],
        banco: json['banco'],
        estado: json['estado'],
        respuesta: json['respuesta'],
        autorizacion: json['autorizacion'],
        recibo: json['recibo'],
        fecha: DateTime.parse(json['fecha']),
        franquicia: json['franquicia'],
        codRespuesta: json['cod_respuesta'],
        ip: json['ip'],
        enpruebas: json['enpruebas'],
        tipoDoc: json['tipo_doc'],
        documento: json['documento'],
        nombres: json['nombres'],
        apellidos: json['apellidos'],
        email: json['email'],
        ciudad: json['ciudad'],
        direccion: json['direccion'],
        indPais: json['ind_pais'],
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
        'banco': banco,
        'estado': estado,
        'respuesta': respuesta,
        'autorizacion': autorizacion,
        'recibo': recibo,
        'fecha': fecha?.toIso8601String(),
        'franquicia': franquicia,
        'cod_respuesta': codRespuesta,
        'ip': ip,
        'enpruebas': enpruebas,
        'tipo_doc': tipoDoc,
        'documento': documento,
        'nombres': nombres,
        'apellidos': apellidos,
        'email': email,
        'ciudad': ciudad,
        'direccion': direccion,
        'ind_pais': indPais,
        'transactionID': transactionId,
        'ticketId': ticketId,
      };

  @override
  String toString() {
    return 'Data(refPayco: $refPayco, factura: $factura, descripcion: $descripcion, valor: $valor, iva: $iva, baseiva: $baseiva, moneda: $moneda, banco: $banco, estado: $estado, respuesta: $respuesta, autorizacion: $autorizacion, recibo: $recibo, fecha: $fecha, franquicia: $franquicia, codRespuesta: $codRespuesta, ip: $ip, enpruebas: $enpruebas, tipoDoc: $tipoDoc, documento: $documento, nombres: $nombres, apellidos: $apellidos, email: $email, ciudad: $ciudad, direccion: $direccion, indPais: $indPais, transactionId: $transactionId, ticketId: $ticketId)';
  }
}
