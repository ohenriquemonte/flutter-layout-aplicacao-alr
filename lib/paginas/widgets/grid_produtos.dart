import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // return GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: moveis.length,
        itemBuilder: (BuildContext context, int indice) {
          final movel = moveis[indice];

          return Container(
            child: Text('$movel'),
          );
        }
        //   children: [
        //     Container(color: Colors.red),
        //     Container(color: Colors.yellow),
        //     Container(color: Colors.blue)
        //   ],
        );
  }
}
