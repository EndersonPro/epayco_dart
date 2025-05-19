import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_dart/data/http/http.dart';
import 'package:epayco_dart/data/models/api_responses/tc_transaction.dart';
import 'package:epayco_dart/data/models/tc_transaction.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/domain/repositories/tc_repository.dart';

class TcRepositoryImpl implements ITcRepository {
  @override
  Future<Either<Failure, TcTransactionResponse>> payByCreditCard({
    required TcTransaction transaction,
    required String token,
  }) async {
    try {
      final response = await httpClient.post(
        '/payment/process',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: transaction.toJson(),
      );
      print('Objeto envuado:');
      print(transaction.toJson().toString());
      return Right(
        TcTransactionResponse.fromJson(
          response.data,
        ),
      );
    } catch (e) {
      return Left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }
}
