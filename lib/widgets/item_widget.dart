import 'package:flutter/material.dart';
import 'package:sample/models/catlog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({super.key,required this.item});

@override
Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.deepPurpleAccent,
            ),
          ),
          child: GridTile(
            header: Padding(
                padding: const EdgeInsets.all(2),
                child: Container(
                  color: Colors.orangeAccent,
                  child: Text(
                    item.name,
                    textAlign: TextAlign.center,
                  ),
                )),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Image.network(
                    item.image,
                    fit: BoxFit.contain,
                  ))
                ],
              ),
            ),
            footer: Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                color: Colors.indigoAccent,
               
                child: Text(
                  "\₹${item.price}",
                  textAlign: TextAlign.center,
                ),
               
              ),
            ),
          )),
    );
  }
}
//     return Card(
//       // ignore: prefer_const_constructors
//       shape: StadiumBorder(),
//       shadowColor: Colors.blue,
//       elevation:20,
      
//       child:GridView.builder(
//         gridDelegate:silverCatalogModel.products.length,
//         itemCount: CatalogModel.products.length,
//         itemBuilder: (context, index) , 
//       mainAxisCount:
//       ),
        
        
//     );
// }
// }