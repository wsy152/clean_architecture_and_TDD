import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String numeroPlaca;
  int quantidadePortas;
  double valorFinal;
  CarroDto({
    required this.numeroPlaca,
    required this.quantidadePortas,
    required this.valorFinal,
  }) : super(
            placa: numeroPlaca, qtdPortas: quantidadePortas, valor: valorFinal);

  toMap() {
    return {
      'placa': this.placa,
      'quantidadePortas': this.quantidadePortas,
      'valorFinal': this.valorFinal,
    };
  }

  CarroDto fromMap(Map map) {
    return CarroDto(
      numeroPlaca: map['placa'],
      quantidadePortas: map['quantidadePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
