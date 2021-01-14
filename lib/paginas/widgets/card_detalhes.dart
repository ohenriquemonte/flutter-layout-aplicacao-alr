import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;

  CardDetalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(
            texto: movel.titulo,
          ),
          TextoDetalhes(
            texto: movel.descricao,
          )
        ],
      ),
    );
  }
}
