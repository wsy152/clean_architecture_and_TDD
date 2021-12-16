import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_carro_favorito_repository.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salvar_carro_favorito.dart';

class SalvarCarroFavoritoUserCaseImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUserCaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
