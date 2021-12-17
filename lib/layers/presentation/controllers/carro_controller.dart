import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:clean_architecture/layers/domain/usucases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salvar_carro_favorito.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUseCase,
  );

  getCarrosPorCor(String cor) {
    var carro = _getCarrosPorCorUseCase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUseCase(carro);
  }
}
