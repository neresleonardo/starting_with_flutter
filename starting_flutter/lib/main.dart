import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionanda = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionanda++;
    });
    print(_perguntaSelecionanda);
  }

  Widget build(BuildContext context) {
    final List perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'resposta': [
          'Preto',
          'Vermelho',
          'Verde',
          'Branco',
        ],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'resposta': [
          'Leão',
          'Macaco',
          'Cachorro',
          'Elefante',
        ],
      },
      {
        'texto': 'Qual é o seu Youtube favorito?',
        'resposta': [
          'Felipe Neto',
          'Monark',
          'Leon',
          'Peter',
        ],
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionanda]['texto']),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
