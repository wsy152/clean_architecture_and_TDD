import 'package:clean_architecture/layers/data/data_sources/local/get_carro_por_cor_local_data_source.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/domain/usucases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usucases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instancia de carro quando passado qualquer cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('azul');

    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uum carro de quatro portas quando vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('vermelho');

    expect(result.qtdPortas, 4);
  });
  test('Deve retornar um carro de 2 porta de qualquer cor exceto vermelho', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()),
    );

    var result = useCase('verde');

    expect(result.qtdPortas, 2);
  });
}
