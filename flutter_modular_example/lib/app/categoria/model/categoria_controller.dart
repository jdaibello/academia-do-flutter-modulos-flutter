import 'package:flutter/material.dart';
import 'package:flutter_modular_example/app/categoria/model/preco_model.dart';

class CategoriaController {
  PrecoModel precoModel;

  CategoriaController({required this.precoModel}) {
    debugPrint('Categoria Controller $hashCode');
  }
}
