import 'package:clean_architecture/layers/data/data_sources/get_carro_por_cor_data_source.dart';
import 'package:clean_architecture/layers/data/data_sources/local/get_carro_por_cor_local_data_source.dart';
import 'package:clean_architecture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/save_carro_favorito_repository.dart';
import 'package:clean_architecture/layers/domain/usucases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usucases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salar_carro_favorito_imp.dart';
import 'package:clean_architecture/layers/domain/usucases/salvar_carro_favorito/salvar_carro_favorito.dart';
import 'package:clean_architecture/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.resetLazySingleton<GetCarrosPorCorDataSource>(
      instance: () => GetCarrosPorCorLocalDataSourceImp(),
    );

    //repositories
    getIt.resetLazySingleton<GetCarrosPorCorRepository>(
      instance: () => GetCarrosPorCorRepositoryImp(getIt()),
    );

    getIt.resetLazySingleton<SalvarCarroFavoritoRepository>(
      instance: () => SalvarCarroFavoritoRepositoryImp(),
    );
    //usecases

    getIt.resetLazySingleton<GetCarrosPorCorUseCase>(
        instance: () => GetCarrosPorCorUseCaseImp(getIt()));

    getIt.resetLazySingleton<SalvarCarroFavoritoUseCase>(
        instance: () => SalvarCarroFavoritoUserCaseImp(getIt()));

    //controllers

    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}

// CarroController controller = CarroController(
//   GetCarrosPorCorUseCaseImp(
//       GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp())),
//   SalvarCarroFavoritoUserCaseImp(SalvarCarroFavoritoRepositoryImp()),
// );
