import 'dart:io';

import 'package:flutter/material.dart';
import 'package:antropometria_flutter/components/main_drawer.dart';

class ImcScreen extends StatefulWidget {
  @override
  ImcState createState() => ImcState();
}

class ImcState extends State<ImcScreen> {
  final _alturaController = TextEditingController();
  final _pesoController = TextEditingController();
  double _resultado = 0;

  _submitForm() {
    final _altura = double.tryParse(_alturaController.text)!;
    final _peso = double.tryParse(_pesoController.text)!;

    if (_altura == 0.0) {
      return;
    }
    if (_peso == 0.0) {
      return;
    }
    setState(() {
      _resultado = (_peso / (_altura * _altura));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Imc')),
      body: Container(
        child: Column(children: [
          Container(
              margin: EdgeInsets.all(50.0),
              padding: EdgeInsets.all(10.0),
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.indigo.shade100,
                border: Border.all(),
              ),
              child: Column(children: [
                TextField(
                    controller: _alturaController,
                    decoration:
                        InputDecoration(labelText: 'Altura (Ex:. 1.7)')),
                TextField(
                    controller: _pesoController,
                    decoration:
                        InputDecoration(labelText: 'Quilos (Ex:. 69.5)')),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                        onPressed: _submitForm,
                        child:
                            Text('Confirmar', style: TextStyle(fontSize: 17)))),
                Text(
                  _resultado.toStringAsFixed(2),
                  style: TextStyle(fontSize: 17),
                ),
              ])),
          Image.asset('foto2.PNG', fit: BoxFit.fill),
        ]),
      ),
      drawer: MainDrawer(),
    );
  }
}
