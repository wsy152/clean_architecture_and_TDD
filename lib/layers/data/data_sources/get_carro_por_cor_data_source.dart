import 'package:clean_architecture/layers/data/dto/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}
