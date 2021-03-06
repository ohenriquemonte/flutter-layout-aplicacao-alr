import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/main.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/item_carrinho.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/texto_detalhes.dart';
import 'package:intl/intl.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Function atualizaPagina;

  CardDetalhes({this.movel, this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(
            texto: movel.titulo,
            estilo: Theme.of(context).textTheme.headline1,
          ),
          TextoDetalhes(
            texto: movel.descricao,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _verificarListaItemCarrinho(Inicio.itensCarrinho,
                        ItemCarrinho(movel: movel, quantidade: 1));
                  },
                  child: Text('Comprar', style: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    atualizaPagina();
  }

  void _verificarListaItemCarrinho(
      List<ItemCarrinho> lista, ItemCarrinho item) {
    int indiceMovel = lista.indexWhere((item) => item.movel == movel);

    if (indiceMovel >= 0) {
      lista[indiceMovel].quantidade++;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
