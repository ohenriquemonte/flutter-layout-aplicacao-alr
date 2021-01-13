import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/imagem_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  ElementoGridProdutos({this.movel});

  @override
  Widget build(BuildContext context) {
    return ImagemElementoGridProdutos(
      imagem: movel.foto,
    );
  }
}
