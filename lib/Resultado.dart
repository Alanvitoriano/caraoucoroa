import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String Valor;
  Resultado(this.Valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagen = "imagens/moeda_cara.png";

    if (widget.Valor == "cara") {
      caminhoImagen = "imagens/moeda_cara.png";
    } else {
      caminhoImagen = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      // backgroundColor: Color.fromRGBO(255, 204, 128, 12),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagen),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
