import 'package:clean_architecture/layers/data/dto/carro_dto.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
      'placa': 'ABC123',
      'quantidadePortas': 4,
      'valorFinal': 100.00,
    };
    return CarroDto.fromMap(json);
  }
}
