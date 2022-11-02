

import 'package:flutter/material.dart';
import './questao.dart';

main( ) {
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
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget> [
            Questao(perguntas[_perguntaSelecionanda]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
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