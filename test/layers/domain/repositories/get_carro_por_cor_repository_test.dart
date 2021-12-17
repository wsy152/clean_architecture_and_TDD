import 'package:clean_architecture/layers/data/data_sources/get_carro_por_cor_data_source.dart';
import 'package:clean_architecture/layers/data/data_sources/local/get_carro_por_cor_local_data_source.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);
  test('Devolva um carro independente da cor', () {
    var result = repository('qualqur');

    expect(result, isNotNull);
  });
}
