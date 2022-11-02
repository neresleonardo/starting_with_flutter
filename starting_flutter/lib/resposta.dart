import 'package:flutter/material.dart';

  class Resposta extends StatelessWidget {

  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(30,10,30,10),
      width: double.infinity,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.amber,
        elevation: 20,
        padding: EdgeInsets.all(20),
        backgroundColor: Colors.purple[900],
      ) ,
      child: Text(texto),
      onPressed: quandoSelecionado,
      
    )
    );
  }
}