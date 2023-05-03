
import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ELE ESTA EM TODO LUGAR',
    home: frases(),
  ));
}

class frases extends StatefulWidget {
  const frases({super.key});

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {
  //back do app
  //criar um array de frases para ser exibidas de forma aleatroias


  var _imagem=[
    'img/imagem1.jpg',
    'img/imagem2.jpg',
    'img/imagem3.jpg',
    'img/imagem4.jpg',
    'img/imagem5.jpg'
  ];
  var _frases = [
    'Ronaldinho joga melhor em qual Framework ? em Flutter',
    'Qual tipo de linguagem o  Bruxo usa ? Magia Dart',
    'Porque o Ronaldinho consegue está em todas plataformas ?Porque ele usa Flutter',
    'Qual anti-virus o Bruxo nao conseguiu driblar ? O virus do Paraguai',
    'Browser : Criador do Dart ? Ronaldinho visto criando dart',
  ];

  var _frasesGerada = 'Click abaxio para gerar uma frase';
  var _imagem_ale = 'img/imagem2.jpg';
  void _gerarFrase(){
    var image_sorteada = Random() .nextInt(_imagem.length);
    var numeroSorteado = Random() .nextInt(_frases.length);

    setState(() {
      _imagem_ale = _imagem[image_sorteada];
    });

    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(

        title: Text('ELE ESTA EM TODO LUGAR'),
        backgroundColor: Colors.amberAccent,

      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(_imagem_ale),
              Text(_frasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  elevation: 30,

                ),
                child:
                Text('Nova frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}