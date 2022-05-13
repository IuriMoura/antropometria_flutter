import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:antropometria_flutter/models/item.dart';
import 'package:antropometria_flutter/utils/app_routes.dart';

class TypeItem extends StatelessWidget {
  final Item itens;

  const TypeItem(this.itens);

  void _selectedType(BuildContext context, itens) {
    if (itens.title == "Imc") {
      Navigator.of(context).pushNamed(
        AppRoutes.IMC,
      );
    } else {
      Navigator.of(context).pushNamed(
        AppRoutes.PERCENTUAL,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectedType(context, itens),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          itens.title,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.justify,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [
                  itens.color.withOpacity(0.5),
                  itens.color,
                ],
                begin: Alignment.topLeft, //inicio do gradiente
                end: Alignment.bottomRight // fim
                )),
      ),
    );
  }
}
