import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/imagem_elemento_grid_produtos.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/titulo_elemento_grid_produtos.dart';

import 'degrade_elemento_grid_produtos.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  ElementoGridProdutos({this.movel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImagemElementoGridProdutos(
          imagem: movel.foto,
        ),
        DegradeElementoGridProdutos(),
        TituloElementoGridProdutos(
          titulo: movel.titulo,
        )
      ],
    );
  }
}
