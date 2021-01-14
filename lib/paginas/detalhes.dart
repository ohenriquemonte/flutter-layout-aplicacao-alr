import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/appbar_customizada.dart';

class Detalhes extends StatelessWidget {
  final Movel movel;
  Detalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${movel.foto}'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: movel.titulo,
          ehPaginaCarrinho: false,
        ),
        body: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/carrinho');
          },
          child: Text('Agora para a pagina carrinho'),
        ),
      ),
    );
  }
}
