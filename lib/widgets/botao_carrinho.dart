import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100), bottomLeft: Radius.circular(100)),
      ),
      alignment: Alignment.centerRight,
      height: 40,
      padding: EdgeInsets.only(right: 20.0, left: 20.0),
      child: Image(
        height: 30.0,
        image: AssetImage(
          'utilidades/assets/icones/carrinho.png',
        ),
      ),
    );
  }
}
