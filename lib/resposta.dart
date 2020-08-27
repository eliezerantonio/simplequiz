import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final texto;
  final void Function() quandoSelecionado;


  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(32),
      child: RaisedButton(
        color: Colors.blue,
        textColor:Colors.white,
        child:Text( texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
