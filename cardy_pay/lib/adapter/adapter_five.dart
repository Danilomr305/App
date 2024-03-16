// ignore_for_file: avoid_renaming_method_parameters

import 'package:hive/hive.dart';

import '../models/moeda_models.dart';

class MoedaHiveAdapter extends TypeAdapter<Moeda>{
  @override
  final typeId = 0;

  @override
  Moeda read(BinaryReader reader) {
    return Moeda (
      icone: reader.readString(),
      nome: reader.readString(),
      sigla: reader.readString(),
      preco: reader.readDouble(),
    );
  }


  @override
  void write(BinaryWriter writer , Moeda obj) {
    writer.writeString(obj.icone);
    writer.writeString(obj.nome);
    writer.writeString(obj.sigla);
    writer.writeDouble(obj.preco);
  }
}