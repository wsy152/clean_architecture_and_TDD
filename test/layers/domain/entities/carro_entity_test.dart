import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Espero que a entidade não sejá nula', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'abc222', qtdPortas: 4, valor: 201000.00);
    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja 2', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'abc222', qtdPortas: 2, valor: 201000.00);

    expect(carroEntity.qtdPortas, 2);
  });

  test('Espero que o valor real sejá 2 mil', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'abc222', qtdPortas: 2, valor: 1000.00);

    var resultEsperado = 2000.00;

    expect(carroEntity.valorReal, resultEsperado);
  });

  test('Espero que se o veiculo não tenha porta o valor é zero', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'abc222', qtdPortas: 0, valor: 1000.00);

    var resultEsperado = 0;

    expect(carroEntity.valorReal, resultEsperado);
  });
  test('Espero que se o valor sejá 30000.00', () {
    CarroEntity carroEntity =
        CarroEntity(placa: 'abc222', qtdPortas: 2, valor: 15000.00);

    var resultEsperado = 30000.00;
    carroEntity.setLogica();

    expect(carroEntity.valor, resultEsperado);
  });
}
