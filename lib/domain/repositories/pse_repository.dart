import 'package:dartz/dartz.dart';
import 'package:epayco_dart/domain/errors/failure.dart';
import 'package:epayco_dart/epayco_dart.dart';

abstract class IPseRepository {
  Future<Either<Failure, GetBanksResponse>> getBanks({
    required String token,
  });
  Future<Either<Failure, PseTransactionResponse>> createTransaction({
    required String token,
    required PSETransactionModel transaction,
  });
  Future<Either<Failure, PseConfirmTransactionResponse>> confirmTransaction({
    required String token,
    required String transactionId,
  });
}
