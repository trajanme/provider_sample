import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'k.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<K>(
        create: (context) => K(),
        child: Page1(),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<K>(context).k),
      ),
      body: Column(
        children: [Page2(), Page3()],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText) {
        Provider.of<K>(context, listen: false).TextChanged(newText);
        debugPrint(Provider.of<K>(context, listen: false).k);
      },
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<K>(context).k);
  }
}
