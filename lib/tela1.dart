import 'package:flutter/material.dart';
import 'tela2.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _HomePageState();
}
class _HomePageState extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      //Aqui está mostrando a parte de cima, no qual vai estar escrito "MENU" e a cor var ser laranja

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.deepOrangeAccent,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("IMC"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/segunda');
                      }),
                  //Está usando a rota nomeada, onde nesse caso para chamar irá usar o texto "/segunda"
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/terceira');
                      }),
                  //Está usando a rota nomeada, onde nesse caso para chamar irá usar o texto "/terceira"
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quarta');
                      }),
                  //Está usando a rota nomeada, onde nesse caso para chamar irá usar o texto "/quarta"
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quinta');
                      }),
                  //Está usando a rota nomeada, onde nesse caso para chamar irá usar o texto "/quinta"
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}