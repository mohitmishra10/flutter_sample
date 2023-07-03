import 'package:flutter/material.dart';
import 'package:sample/models/catlog.dart';
import 'package:sample/widgets/drawer.dart';
import 'package:sample/widgets/item_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Top Items",
          style: TextStyle(color: Color.fromARGB(255, 65, 255, 138)),
        ),
      ),
      body: GridView.builder(
        itemCount: CatalogModel.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.products[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
