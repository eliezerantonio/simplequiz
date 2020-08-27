import 'package:flutter/material.dart';
import 'package:simplequiz/questao.dart';
import 'package:simplequiz/resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print("Resposta $_perguntaSelecionada");
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual o seu nome?',
        'resposta': ['Eliezer', 'Fernando', "Faria"]
      },
      {
        'texto': 'Qual seu animal Favorito?',
        'resposta': ['Cao', 'Girafa', 'Leao']
      },
      {
        'texto': "Qual sua cor favorita?",
        'resposta': ['Azul', 'Presta', 'Castanha']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto']),
            Resposta("resposta 1", _responder),
            Resposta("resposta 2", _responder),
            Resposta("resposta 3", _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
