library epayco_dart;

import 'package:epayco_dart/data/models/api_responses/get_banks.dart';
import 'package:epayco_dart/data/models/api_responses/get_document_types.dart';
import 'package:epayco_dart/data/models/auth_response.dart';
import 'package:epayco_dart/data/models/pse_transaction.dart';
import 'package:epayco_dart/data/models/pse_transaction_response.dart';
import 'package:epayco_dart/data/repositories/auth_repository.dart';
import 'package:epayco_dart/data/repositories/master_list_repository.dart';
import 'package:epayco_dart/data/repositories/pse_repository.dart';

export 'package:epayco_dart/data/models/models.dart';

class EPayco {
  String? _publicKey;
  String? _privateKey;
  String? _token;

  EPayco._();

  static final instance = EPayco._();

  EPayco configure({
    String? publicKey,
    String? privateKey,
  }) {
    _publicKey = publicKey;
    _privateKey = privateKey;
    return instance;
  }

  Future<GetBanksResponse?> getBanks() async {
    assert(_token != null, """
        token is null please call `getToken()`
    """);
    final pseRepository = PseRepositoryImpl();
    final result = await pseRepository.getBanks(
      token: _token!,
    );
    return result.fold(
      (l) => throw l,
      (r) => r as GetBanksResponse,
    );
  }

  Future<GetDocumentTypes?> getDocumentTypes() async {
    assert(_token != null, """
        token is null please call `getToken()`
    """);
    final masterListRepository = MasterListRepositoryImpl();
    final result = await masterListRepository.getDocumentTypes(
      token: _token!,
    );
    return result.fold(
      (l) => throw l,
      (r) => r,
    );
  }

  Future<PseTransactionResponse?> createTransaction(
      PSETransactionModel transaction) async {
    assert(_token != null, """
        token is null please call `getToken()`
    """);
    final pseRepository = PseRepositoryImpl();
    final result = await pseRepository.createTransaction(
      token: _token!,
      transaction: transaction,
    );
    return result.fold(
      (l) => throw l,
      (r) => r,
    );
  }

  Future<AuthResponse> getToken() async {
    assert(_publicKey != null, """
        Public key is required please configure it
        ```dart
          final epaycoClient = EPayco.instance.configure(
            publicKey: 'your public key',
          );
        ```
    """);
    assert(_privateKey != null, """
      Private key is required please configure it
      ```dart
        final epaycoClient = EPayco.instance.configure(
            privateKey: 'your private key',
        );
      ```
      """);

    final authRepository = AuthRepositoryImpl();
    final result = await authRepository.getJWTToken(
      publicKey: _publicKey!,
      privateKey: _privateKey!,
    );

    return result.fold(
      (failure) => throw failure,
      (token) {
        _token = token.token;
        return token;
      },
    );
  }
}
