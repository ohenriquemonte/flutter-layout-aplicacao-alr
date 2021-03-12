import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/main.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/appbar_customizada.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/lista_carrinho.dart';
import 'package:intl/intl.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  @override
  Widget build(BuildContext context) {
    int valorTotal = _calcularTotal();

    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              formatacaoReais.format(valorTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: 'Carrinho',
        ehPaginaCarrinho: true,
      ),
      body: ListaCarrinho(
        atualiza: atualiza,
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }

  int _calcularTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }

    return 0;
  }
}
