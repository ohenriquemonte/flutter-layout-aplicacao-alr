import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/texto_detalhes.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

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
          ),
          Row(
            children: [
              Text(formatacaoReais.format(movel.preco)),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text('Comprar'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
