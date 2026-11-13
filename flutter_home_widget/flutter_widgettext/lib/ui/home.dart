import 'package:flutter/material.dart';

import '../meu_home_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _widgetCriado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget Externo Flutter")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                _widgetCriado = true;
              });
            },
            child: const Text('Criar widget'),
          ),
          if (_widgetCriado)
            const MeuInfoWidget(
              informacao:
                  'Esta é a informação exibida no meu widget personalizado!',
            ),
        ],
      ),
    );
  }
}