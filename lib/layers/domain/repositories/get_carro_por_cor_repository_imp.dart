import 'package:clean_architecture/layers/data/data_sources/get_carro_por_cor_data_source.dart';

import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _carrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._carrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    return _carrosPorCorDataSource(cor);
  }
}
