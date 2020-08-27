import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntaSelecionada=0;
  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
    'Qual tecnologia voce gosta?'
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }

  Widget responder(){
    perguntaSelecionada++;
    print("Resposta $perguntaSelecionada");
  }
}
