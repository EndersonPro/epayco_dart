import 'package:dartz/dartz.dart';
import 'package:epayco_dart/data/models/api_responses/get_document_types.dart';
import 'package:epayco_dart/domain/errors/failure.dart';

abstract class IMasterListRepository {
  Future<Either<Failure, GetDocumentTypes>> getDocumentTypes({
    required String token,
  });
}
