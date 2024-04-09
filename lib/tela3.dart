import 'package:flutter/material.dart';
import 'package:projeto_rotas2/main.dart';
import 'tela4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const Tela3(),
    );
  }
}
class Tela3 extends StatefulWidget {
  const Tela3({super.key});





  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  //Será usado o incremente para que assim, ele ir aumentando o valor

  void _decrementCounter() {
    setState(() {

      _counter--;
    });
  }
  //Será usado o decremente para que assim, ele ir diminuindo o valor



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Contador'),
      ),
      body: Center(


        child: Column(




          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed:  _decrementCounter,
                    child: const Icon(Icons.remove))
              ],
              //Irá usar o Icons add= para adicionar e o remove= para remover
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), */
    );
  }
}