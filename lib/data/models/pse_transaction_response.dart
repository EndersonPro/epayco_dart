class PseTransactionResponse {
  final bool? success;
  final String? titleResponse;
  final String? textResponse;
  final String? lastAction;
  final Data? data;

  PseTransactionResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });
}

class Data {
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

  Data({
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
}
