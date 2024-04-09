import 'package:flutter/material.dart';
import 'package:projeto_rotas2/main.dart';
import 'tela5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela4(),
    );
  }
}
class Tela4 extends StatefulWidget {
  const Tela4({super.key});

  @override
  State<Tela4> createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela() {
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "";
    });
  }
  //Este é usado para limpar a tela, e deixar escrito "Informe seus dados"

  void _inserir() {
    setState(() {
      String usuario = (usuarioController.text);
      String senha = (senhaController.text);
      _textoInfo = "Informe seus dados";

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
        title: Text("Cadastro de Usuário"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
        ],
      ),
      //Usar a cor cinza e irá usar o refresh como Icon para limpar
      body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Icon(
                Icons.person_outline,
                size: 120.0,
                color: Colors.grey,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Usuário",
                    labelStyle: TextStyle(color: Colors.grey)),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: usuarioController,
              ),
              //O texto escrito "Usuário" e  cor será cinza
              TextField(
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.grey)),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
                controller: senhaController,
              ),
              //O texto escrito "Senha" e  cor será cinza
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
                style: TextStyle(color: Colors.grey, fontSize: 25.0),
              )
            ], // This trailing comma makes auto-formatting nicer for build methods.
          )),
    );
  }
}