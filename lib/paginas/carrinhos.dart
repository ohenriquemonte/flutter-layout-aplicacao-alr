import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/appbar_customizada.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/lista_carrinho.dart';

class Carrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(
        titulo: 'Carrinho',
				ehPaginaCarrinho: true,
      ),
      body: ListaCarrinho(),
    );
  }
}
