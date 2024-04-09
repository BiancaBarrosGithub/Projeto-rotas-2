import 'package:flutter/material.dart';
import 'package:projeto_rotas2/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela5(),
    );
  }
}
class Tela5 extends StatefulWidget {
  const Tela5({super.key});

  @override
  State<Tela5> createState() => _Tela5State();
}

class _Tela5State extends State<Tela5> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String _textoInfo = "Informe os dados";

  void _limpar_Tela() {
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "";
    });
  }
  //Este é usado para limpar a tela, e deixar escrito "Informe od dados"

  void _inserir() {
    setState(() {
      String usuario = (usuarioController.text);
      String senha = (senhaController.text);
      _textoInfo = "Informe os dados";

      if ( usuario != null && senha != null) {
        _textoInfo = "Cadastrado com sucesso!";
      }
    });
  }
  //Usar o inserir, e se estiver tudo completo aparecerá "Cadastrado com sucesso"



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produto"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
        ],
      ),
      //Usar a cor rosa e irá usar o refresh como Icon para limpar
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.pinkAccent,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Código",
                    labelStyle: TextStyle(color: Colors.pinkAccent)),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: usuarioController,
              ),
              //O texto escrito "Código" e  cor será rosa
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.pinkAccent)),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: senhaController,
              ),
              //O texto escrito "Senha" e  cor será rosa
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: _inserir, child: const Text("Cadastrar")),
                ),
              ),
              //No botão de inserir terá o texto "Cadastrar"
              Text(
                _textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.pinkAccent, fontSize: 25.0),
              )
            ], // This trailing comma makes auto-formatting nicer for build methods.
          )),
    );
  }
}