import 'package:dartz/dartz.dart';
import 'package:epayco_dart/data/models/api_responses/tc_transaction.dart';
import 'package:epayco_dart/data/models/tc_transaction.dart';
import 'package:epayco_dart/domain/errors/failure.dart';

abstract class ITcRepository {
  Future<Either<Failure, TcTransactionResponse>> payByCreditCard({
    required TcTransaction transaction,
    required String token,
  });
}
