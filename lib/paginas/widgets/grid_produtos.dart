import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/elemento_grid_produtos.dart';

class GridProdutos extends StatelessWidget {
  final moveis;
  final Function atualiza;
  GridProdutos({this.moveis, this.atualiza});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // return GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: moveis.length,
        itemBuilder: (BuildContext context, int indice) {
          final movel = Movel.fromJson(moveis[indice]);

          return ElementoGridProdutos(movel: movel, atualiza: atualiza);
        }
        //   children: [
        //     Container(color: Colors.red),
        //     Container(color: Colors.yellow),
        //     Container(color: Colors.blue)
        //   ],
        );
  }
}
