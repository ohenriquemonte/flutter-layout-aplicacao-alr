import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/main.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/indicador_botao_carrinho.dart';

class BotaoCarrinho extends StatefulWidget {
  @override
  _BotaoCarrinhoState createState() => _BotaoCarrinhoState();
}

class _BotaoCarrinhoState extends State<BotaoCarrinho> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho')
            .then((value) => setState(() {}));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
        ),
        alignment: Alignment.centerRight,
        height: 40,
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: _visibilidadeIndicadorCarrinho(),
      ),
    );
  }

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(
        children: [
          Image(
            height: 30.0,
            image: AssetImage(
              'utilidades/assets/icones/carrinho.png',
            ),
          ),
          IndicadorBotaoCarrinho()
        ],
      );
    }

    return Image(
      height: 30.0,
      image: AssetImage(
        'utilidades/assets/icones/carrinho.png',
      ),
    );
  }
}
