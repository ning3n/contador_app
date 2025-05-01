import 'package:contador_app/core/app_colors.dart';
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
        backgroundColor: AppColors.background,
        appBar: AppBar(
            title: Text('Contador Personalizado'),
            backgroundColor: AppColors.buttonBackground,
            foregroundColor: AppColors.background,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        'Contador:',
                        style: TextStyle(fontSize: 70, color: AppColors.textColor),
                    ),
                    Text(
                        '$_contador',
                        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: AppColors.textColor),
                    ),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(height: 60, width: 150 ,child: ElevatedButton(onPressed: _incrementar, style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonBackground, foregroundColor: AppColors.background), child: Text('+'),)),
                            ),
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(height: 60, width: 150 ,child: ElevatedButton(onPressed: _decrementar, style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonBackground, foregroundColor: AppColors.background), child: Text('-'))),
                            ),
                        ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: SizedBox(height: 60, width: 350 ,child: ElevatedButton(onPressed: _resetear, style: ElevatedButton.styleFrom(backgroundColor: AppColors.buttonBackground, foregroundColor: AppColors.background), child: Text('Reset'))),
                        )
                      ],
                    )
                ],
            ),
        ),
    );
  }




}