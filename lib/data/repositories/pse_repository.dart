import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_dart/data/http/http.dart';
import 'package:epayco_dart/data/models/api_responses/get_banks.dart';
import 'package:epayco_dart/data/models/pse_transaction.dart';
import 'package:epayco_dart/data/models/pse_transaction_response.dart';
import 'package:epayco_dart/domain/entities/api_responses/get_banks_entity.dart';
import 'package:epayco_dart/domain/entities/pse_transaction_entity.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/domain/repositories/pse_repository.dart';

class PseRepositoryImpl implements IPseRepository {
  @override
  Future<Either<Failure, GetBanksResponseEntity>> getBanks({
    required String token,
  }) async {
    try {
      final response = await httpClient.get(
        '/payment/pse/banks',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return Right(
        GetBanksResponse.fromJson(
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

  @override
  Future<Either<Failure, PseTransactionResponse>> createTransaction({
    required String token,
    required PseTransactionEntity transaction,
  }) async {
    try {
      final response = await httpClient.post(
        '/payment/process/pse',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: (transaction as PSETransactionModel).toJson(),
      );

      final isSuccess = response.data?.success ?? false;

      if (isSuccess) {
        return Right(response.data!);
      } else {
        return Left(
          Failure(
            message: response.data?.textResponse ?? 'Transaction failed',
          ),
        );
      }
    } catch (e) {
      return Left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }
}
