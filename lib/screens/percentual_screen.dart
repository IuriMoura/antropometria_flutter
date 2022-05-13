import 'package:flutter/material.dart';
import 'package:antropometria_flutter/components/main_drawer.dart';

class PercentualScreen extends StatefulWidget {
  @override
  PercentualState createState() => PercentualState();
}

class PercentualState extends State<PercentualScreen> {
  final _idadeController = TextEditingController();
  final _dobrasController = TextEditingController();
  double _resultado = 0;
  double _densidadeCorporia = 0;

  _submitForm() {
    final _idade = double.tryParse(_idadeController.text)!;
    final _dobras = double.tryParse(_dobrasController.text)!;

    if (_idade == 0.0) {
      return;
    }
    if (_dobras == 0.0) {
      return;
    }
    setState(() {
      _densidadeCorporia = (1.1093800 -
          (0.0008267 * _dobras) +
          (0.0000016 * (_dobras * _dobras)) -
          (0.0002574 * _idade));
      _resultado = ((4.95 / _densidadeCorporia) - 4.50) * 100;
      print(_densidadeCorporia);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Percntual de Gordura')),
      body: Container(
        margin: EdgeInsets.all(50.0),
        padding: EdgeInsets.all(10.0),
        width: 300,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.indigo.shade100,
          border: Border.all(),
        ),
        child: Column(children: [
          Text(
              'Para saber o percentual de gordura, você deve medir com um adipometro '
              '3 dobras cutaneas, sendoo elas (Suprailíaca, Abdominal, Tríceps) em Milimetros',
              style: TextStyle(fontSize: 17)),
          TextField(
              controller: _dobrasController,
              decoration: InputDecoration(
                  labelText: 'Soma de todas as dobras (Ex:. 150)')),
          TextField(
              controller: _idadeController,
              decoration: InputDecoration(labelText: 'Idade (Ex:. 30)')),
          Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Confirmar', style: TextStyle(fontSize: 17)))),
          Text(
            'Percentual: ${_resultado.toStringAsFixed(2)}%',
            style: TextStyle(fontSize: 18),
          ),
        ]),
      ),
      drawer: MainDrawer(),
    );
  }
}
