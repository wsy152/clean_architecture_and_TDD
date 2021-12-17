import 'package:clean_architecture/layers/presentation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

// ignore: must_be_immutable
class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  CarroController controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
