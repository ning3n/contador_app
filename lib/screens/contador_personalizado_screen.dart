import 'package:flutter/material.dart';

class ContadorPersonalizado extends StatefulWidget {
  const ContadorPersonalizado({super.key});

  @override
  State<ContadorPersonalizado> createState() => _ContadorPersonalizado();
}

class _ContadorPersonalizado extends State<ContadorPersonalizado> {
  int _contador = 0;

  void _incrementar(){
    setState(() {
      _contador++;
    });
  }

  void _decrementar(){
    setState(() {
      _contador--;
    });
  }

  void _resetear(){
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Contador Personalizado'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        'Contador:',
                        style: TextStyle(fontSize: 24),
                    ),
                    Text(
                        '$_contador',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            ElevatedButton(onPressed: _incrementar, child: Text('+')),
                            SizedBox(width: 20),
                            ElevatedButton(onPressed: _decrementar, child: Text('-')),
                            SizedBox(width: 20),
                            ElevatedButton(onPressed: _resetear, child: Text('Reset')),
                        ],
                    )
                ],
            ),
        ),
    );
  }




}