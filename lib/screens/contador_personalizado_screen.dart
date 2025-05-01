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
        backgroundColor: Color(0xFF0D0D0D),
        appBar: AppBar(
            title: Text('Contador Personalizado'),
            backgroundColor: Color(0xFF8A2BE2),
            foregroundColor: Colors.white,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        'Contador:',
                        style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                        '$_contador',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            ElevatedButton(onPressed: _incrementar, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FFFF), foregroundColor: Color(0xFF0D0D0D)), child: Text('+'),),
                            SizedBox(width: 20),
                            ElevatedButton(onPressed: _decrementar, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FFFF), foregroundColor: Color(0xFF0D0D0D)), child: Text('-')),
                            SizedBox(width: 20),
                            ElevatedButton(onPressed: _resetear, style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF00FFFF), foregroundColor: Color(0xFF0D0D0D)), child: Text('Reset')),
                        ],
                    )
                ],
            ),
        ),
    );
  }




}