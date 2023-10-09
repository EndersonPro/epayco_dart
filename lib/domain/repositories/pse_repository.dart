import 'package:dartz/dartz.dart';
import 'package:epayco_dart/data/models/pse_confirm_transaction.dart';
import 'package:epayco_dart/data/models/pse_transaction_response.dart';
import 'package:epayco_dart/domain/entities/api_responses/get_banks_entity.dart';
import 'package:epayco_dart/domain/entities/pse_transaction_entity.dart';
import 'package:epayco_dart/domain/errors/failure.dart';

abstract class IPseRepository {
  Future<Either<Failure, GetBanksResponseEntity>> getBanks({
    required String token,
  });
  Future<Either<Failure, PseTransactionResponse>> createTransaction({
    required String token,
    required PseTransactionEntity transaction,
  });
  Future<Either<Failure, PseConfirmTransactionResponse>> confirmTransaction({
    required String token,
    required String transactionId,
  });
}
