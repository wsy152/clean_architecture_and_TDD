import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carro_por_cor_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();
  test('Devolva um carro independente da cor', () {
    var result = repository('qualqur');

    expect(result, isNotNull);
  });
}
