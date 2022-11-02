

import 'package:flutter/material.dart';

main( ) {
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget {

  var perguntaSelecionanda = 0;

  void responder() {
    perguntaSelecionanda++;
    print("Pergunta respondida");
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
            Text(perguntas[perguntaSelecionanda]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}