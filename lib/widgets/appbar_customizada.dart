import 'package:flutter/material.dart';
import 'botao_carrinho.dart';

class AppBarCustomizada extends StatelessWidget with PreferredSizeWidget {
  final String titulo;

  AppBarCustomizada({this.titulo});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
	  centerTitle: true,
	  actions: [
		  BotaoCarrinho()
	  ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
