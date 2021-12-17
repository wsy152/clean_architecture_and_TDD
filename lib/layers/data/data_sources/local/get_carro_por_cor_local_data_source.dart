import 'package:clean_architecture/layers/data/data_sources/get_carro_por_cor_data_source.dart';
import 'package:clean_architecture/layers/data/dto/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placa': 'ABC123',
    'quantidadePortas': 4,
    'valorFinal': 5000.00,
  };
  final jsonany = {
    'placa': 'QWE',
    'quantidadePortas': 2,
    'valorFinal': 2000.00,
  };
  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonany);
  }
}
