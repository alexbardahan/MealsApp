import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: [
        ...DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 250,
        //fiecare element va avea latimea 200; daca un ecran are 500 de pixeli,
        //vor intra doar doua elemente unul langa altul(vor intra atat de multe element pe fiecare coloana, cate incap pe ecran)
        childAspectRatio: 3 / 2, //pentru 200 latime, o sa am 300 inaltime
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
