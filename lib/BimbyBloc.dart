import 'dart:async';

import 'package:bimby/services/Api.dart';
import 'package:bimby/services/DbRepository.dart';
import 'package:hive/hive.dart';

import 'package:bimby/model/Cliente.dart';

class BimbyBloc {
  final Api _repository = Api();

  final DbRepository _dbRepository = new DbRepository();

  Stream<List<Cliente>> get clienti => _clienti.stream;

  final StreamController<List<Cliente>> _clienti =
      StreamController<List<Cliente>>.broadcast();

  getListaClienti() {
    _repository.getClienti().then((response) => _dbRepository.addAll(response));
  }

  getAllListaClienti() {
    _clienti.sink.add(_dbRepository.getClienti());
  }

  dispose() {
    _clienti.close();
  }
}
