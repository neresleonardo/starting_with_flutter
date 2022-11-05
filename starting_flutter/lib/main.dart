import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionanda = 0;

  final List _perguntas = const [
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

  void _responder() {
    setState(() {
      _perguntaSelecionanda++;
    });
    print(_perguntaSelecionanda);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionanda < _perguntas.length;
  }

  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionanda]['resposta']
        : null;

    List<Widget> widget =
        respostas.map((t) => Resposta(t, _responder)).toList();

    // for (var textoResp in respostas) {
    //   widget.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntaSelecionanda]['texto']),
                  ...widget,
                ],
              )
            : Center(
                child: Text(
                  'Você chegou ao fim das perguntas',
                   style: TextStyle(fontSize: 28),
                ),
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
