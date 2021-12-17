import 'package:clean_architecture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salar_carro_favorito_imp.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salvar_carro_favorito.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUserCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'asss', qtdPortas: 2, valor: 1);

    var result = await useCase(carro);

    expect(result, true);
  });

  test('Espero que não salve o carro quando o valor for menor ou igual a zero',
      () async {
    SalvarCarroFavoritoUseCase useCase =
        SalvarCarroFavoritoUserCaseImp(SalvarCarroFavoritoRepositoryImp());

    var carro = CarroEntity(placa: 'asss', qtdPortas: 2, valor: 0);

    var result = await useCase(carro);

    expect(result, false);
  });
}
