import 'package:flutter/material.dart';
import 'package:projeto1/routes/routes_generator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title}) : _title = title;

  final String _title;

  get name => _title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text("@"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget._title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('TEXT'),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //chamar a página de cadastro
          Navigator.of(context).pushNamed(RoutesGenerator.addPage);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
