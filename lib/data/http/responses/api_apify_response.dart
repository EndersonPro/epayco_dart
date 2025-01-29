class ApiResponse {
  bool? success;
  String? titleResponse;
  String? textResponse;
  String? lastAction;
  Data? data;

  ApiResponse({
    this.success,
    this.titleResponse,
    this.textResponse,
    this.lastAction,
    this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      success: json['success'],
      titleResponse: json['titleResponse'],
      textResponse: json['textResponse'],
      lastAction: json['lastAction'],
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'titleResponse': titleResponse,
      'textResponse': textResponse,
      'lastAction': lastAction,
      'data': data?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApiResponse(success: $success, titleResponse: $titleResponse, textResponse: $textResponse, lastAction: $lastAction, data: $data)';
  }
}

class Data {
  ErrorData? error;

  Data({this.error});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      error: json['error'] != null ? ErrorData.fromJson(json['error']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error?.toJson(),
    };
  }

  @override
  String toString() => 'Data(error: $error)';
}

class ErrorData {
  int? totalErrores;
  List<ErrorDetail>? errores;
  String? idFactura;

  ErrorData({this.totalErrores, this.errores, this.idFactura});

  factory ErrorData.fromJson(Map<String, dynamic> json) {
    return ErrorData(
      totalErrores: json['totalerrores'],
      errores: json['errores'] != null
          ? (json['errores'] as List)
              .map((i) => ErrorDetail.fromJson(i))
              .toList()
          : null,
      idFactura: json['idfactura'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalerrores': totalErrores,
      'errores': errores?.map((e) => e.toJson()).toList(),
      'idfactura': idFactura,
    };
  }

  @override
  String toString() =>
      'ErrorData(totalErrores: $totalErrores, errores: $errores, idFactura: $idFactura)';
}

class ErrorDetail {
  String? codError;
  String? errorMessage;

  ErrorDetail({this.codError, this.errorMessage});

  factory ErrorDetail.fromJson(Map<String, dynamic> json) {
    return ErrorDetail(
      codError: json['codError'],
      errorMessage: json['errorMessage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'codError': codError,
      'errorMessage': errorMessage,
    };
  }

  @override
  String toString() =>
      'ErrorDetail(codError: $codError, errorMessage: $errorMessage)';
}
