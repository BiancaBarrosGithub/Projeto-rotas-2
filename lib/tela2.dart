import 'dart:math';
import 'tela3.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela2(),
    );
  }
}

class Tela2 extends StatefulWidget {
  const Tela2({super.key});



  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  TextEditingController pesoController =  TextEditingController();
  TextEditingController alturaController =  TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }
  //Tem a função de limpar a tela, e deixar escrito "Informe seus dados"

  void _calcular_Imc(){
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse( alturaController.text);
      double imc = peso / pow((altura/100),2);

      //Nesse está mostrando a conta para calcular o imc

      if (imc < 16.5) {
        _textoInfo = "Desnutrido (${imc})";
      }
      else if (imc<=18.5) {
        _textoInfo = "Abaixo do peso (${imc})";
      }
      else if (imc<=24.9) {
        _textoInfo = "Peso ideal (${imc})";
      }
      else if (imc<=29.9) {
        _textoInfo = "Sobre peso (${imc})";
      }
      else if (imc<=34.9) {
        _textoInfo = "Obsidade grau I (${imc})";
      }
      else if (imc<=39.9) {
        _textoInfo = "Obsidade grau II (${imc})";
      }
      else {
        _textoInfo = "Obsidade grau III (${imc})";
      }
    });
  }
  //Aqui está falando o que irá aparecer depois de calcular




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Calculadora IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh)
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        //O texto colocado seria "Calculadora IMC", usará o refresh como icon para limpar

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.deepPurpleAccent,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "PESO (KG)",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent)
              ),
              //Mostrando a cor que vai ser e o que vai estar escrito no caso seria "PESO (KG)"
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "ALTURA (CM)",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent)
              ),
              //Mostrando a cor que vai ser e o que vai estar escrito no caso seria "ALTURA (CM)"
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height:50.0,
                child: ElevatedButton(
                    onPressed: _calcular_Imc,
                    child: const Text("Calcular")
                ),
              ),
            ),
            //O botão de calcular, onde para calcular irá usar o _calcular_imc

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color:  Colors.deepPurpleAccent,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}