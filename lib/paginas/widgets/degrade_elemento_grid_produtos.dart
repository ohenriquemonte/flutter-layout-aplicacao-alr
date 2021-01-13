import 'package:flutter/material.dart';

class DegradeElementoGridProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.transparent,
            Color.fromRGBO(178, 155, 178, 1),
          ])),
    );
  }
}
