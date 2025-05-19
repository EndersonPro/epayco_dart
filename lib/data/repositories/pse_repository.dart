import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:epayco_dart/data/http/http.dart';
import 'package:epayco_dart/data/http/responses/api_apify_response.dart';
import 'package:epayco_dart/data/models/api_responses/get_banks.dart';
import 'package:epayco_dart/data/models/pse_confirm_transaction.dart';
import 'package:epayco_dart/data/models/pse_transaction.dart';
import 'package:epayco_dart/data/models/pse_transaction_response.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/domain/repositories/pse_repository.dart';

class PseRepositoryImpl implements IPseRepository {
  @override
  Future<Either<Failure, GetBanksResponse>> getBanks({
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
    required PSETransactionModel transaction,
  }) async {
    try {
      final response = await httpClient.post(
        '/payment/process/pse',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: transaction.toJson(),
      );

      final responseCast = ApiResponse.fromJson(response.data);

      final isSuccess = responseCast.success ?? false;

      if (isSuccess) {
        return Right(PseTransactionResponse.fromJson(
          response.data,
        ));
      } else {
        if (responseCast.data?.error != null &&
            responseCast.data?.error?.errores != null &&
            responseCast.data?.error?.errores?.isNotEmpty == true) {
          for (var error in responseCast.data!.error!.errores!) {
            print('[EPaycoError]: ${error.codError}: ${error.errorMessage}');
          }
        }
        return Left(
          Failure(
            message: responseCast.textResponse ?? 'Transaction failed',
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

  @override
  Future<Either<Failure, PseConfirmTransactionResponse>> confirmTransaction({
    required String token,
    required String transactionId,
  }) async {
    try {
      final response = await httpClient.post(
        '/payment/pse/transaction',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
        data: {
          'transactionID': int.parse(transactionId),
        },
      );

      final isSuccess = response.data?['success'] ?? false;

      if (isSuccess) {
        return Right(PseConfirmTransactionResponse.fromJson(
          response.data,
        ));
      } else {
        return Left(
          Failure(
            message: response.data?['text_response'] ?? 'Transaction failed',
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
