import 'package:flutter/material.dart';
import 'package:plantss/models/item.dart';
import 'package:plantss/screens/details_screen.dart';
import 'package:plantss/provider/cart.dart';
import 'package:provider/provider.dart';

class HomeBodyGridview extends StatelessWidget {
  const HomeBodyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(Product: items[index]), 
              ),
            );
          },
          child: GridTile(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(items[index].imgpath),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black12,
              trailing: IconButton(
                onPressed: () {
                  
                  Provider.of<Cart>(context, listen: false).add(items[index]);
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              leading: Text("\$${items[index].price.toString()}"),
              title: const Text(""),
            ),
          ),
        );
      },
    );
  }
}










