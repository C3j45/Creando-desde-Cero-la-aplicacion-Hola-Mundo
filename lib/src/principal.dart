import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _valor = 0;
  @override
  void _incrementar() {
    setState(() {
      _valor++;
    });
  }

  void _decrementar() {
    setState(() {
      _valor--;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mi primer App en Flutter'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FlutterLogo(),
            Text("CUAAANTOOO?!!"),
            Text('$_valor')
          ]),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementar,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 20),
          FloatingActionButton(
              onPressed: _decrementar,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove)),
        ]));
  }
}
