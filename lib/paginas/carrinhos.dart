import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/appbar_customizada.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/lista_carrinho.dart';

class Carrinho extends StatefulWidget {
  @override
  _CarrinhoState createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

  atualiza() {
    setState(() {});
  }
}
