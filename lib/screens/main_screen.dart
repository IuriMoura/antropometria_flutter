import 'package:antropometria_flutter/models/item.dart';
import 'package:flutter/material.dart';
import 'package:antropometria_flutter/components/main_itens.dart';
import 'package:antropometria_flutter/data/my_data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent:
              350, //cada elemento com extenso maxima de 200 pixel
          childAspectRatio: 2 / 1, //proporcao de cada elemento dentro do grid
          crossAxisSpacing: 20, //espacamento no eixo cruzado
          mainAxisSpacing: 20, //espacamento no eixo principal
        ),
        children: DUMMY_ITEM.map((Item) {
          return TypeItem(Item);
        }).toList(),
      ),
    );
  }
}
