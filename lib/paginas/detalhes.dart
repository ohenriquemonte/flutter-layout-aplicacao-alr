import 'package:flutter/material.dart';
import 'package:flutter_layout_aplicacao_alr/modelos/movel.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/appbar_customizada.dart';
import 'package:flutter_layout_aplicacao_alr/paginas/widgets/card_detalhes.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;
  Detalhes({this.movel});

  _DetalhesState createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilidades/assets/imagens/${widget.movel.foto}'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustomizada(
          titulo: widget.movel.titulo,
          ehPaginaCarrinho: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(16),
            height: 220,
            child: CardDetalhes(
							atualizaPagina: atualiza,
              movel: widget.movel,
            ),
          ),
        ),
        // FlatButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/carrinho');
        //   },
        //   child: Text('Agora para a pagina carrinho'),
        // ),
      ),
    );
  }

  atualiza() {
    setState(() {});
  }
}
