import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Cliente extends HiveObject {
  Cliente();

  Cliente.mock(String s, String t) {
    nome = s;
    indirizzo = t;
  }

  @HiveField(0)
  int id;

  @HiveField(1)
  String nome;

  @HiveField(2)
  String indirizzo;

  @HiveField(3)
  String cognome;

  @HiveField(4)
  String civico;

  @HiveField(5)
  String citta;

  @HiveField(6)
  String telefono;

  @HiveField(7)
  String email;

  @HiveField(8)
  double lon;

  @HiveField(9)
  double lat;

  @HiveField(10)
  String cap;

  factory Cliente.fromJson(Map<String, dynamic> jsonResponse) {
    Cliente c = new Cliente();
    c.nome = jsonResponse['firstName'];
    c.cognome = jsonResponse['surName'];
    c.indirizzo = jsonResponse['address'];
    c.civico = jsonResponse['civic'];
    c.cap = jsonResponse['zipCode'];
    c.citta = jsonResponse['city'];
    c.telefono = jsonResponse['phone'];
    c.email = jsonResponse['email'];
    c.lat = double.parse(jsonResponse['lat']);
    c.lon = double.parse(jsonResponse['lon']);
    return c;
  }
}

class ClienteAdapter extends TypeAdapter<Cliente> {
  @override
  Cliente read(BinaryReader reader) {
    return Cliente()
      ..id = reader.read()
      ..nome = reader.read()
      ..cognome = reader.read()
      ..indirizzo = reader.read()
      ..civico = reader.read()
      ..cap = reader.read()
      ..citta = reader.read()
      ..telefono = reader.read()
      ..email = reader.read()
      ..lat = reader.read()
      ..lon = reader.read();
  }

  void write(BinaryWriter writer, Cliente obj) {
    writer.write(obj.id);
    writer.write(obj.nome);
    writer.write(obj.cognome);
    writer.write(obj.indirizzo);
    writer.write(obj.civico);
    writer.write(obj.cap);
    writer.write(obj.citta);
    writer.write(obj.telefono);
    writer.write(obj.email);
    writer.write(obj.lat);
    writer.write(obj.lon);
  }

  @override
  int get typeId => 0;
}
