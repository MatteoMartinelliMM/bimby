import 'package:bimby/model/Cliente.dart';
import 'package:hive/hive.dart';

const ClientiBox = 'clientiBox';


class DbRepository {
  Box<Cliente> clientiBox = Hive.box(ClientiBox);

  addArticle(Cliente article) => clientiBox.put(article.id, article);

  List<Cliente> getClienti() {
    return clientiBox.values.toList();
  }

  watch() => clientiBox.watch();

  addAll(List<Cliente> clienti) {
    clientiBox.addAll(clienti);
  }
}
