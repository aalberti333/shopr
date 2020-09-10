import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Yeezy 350',
      description: 'Off-yellow',
      price: 229.99,
      imageUrl:
          'https://images.unsplash.com/photo-1597265245060-dad51a9463c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80',
    ),
    Product(
      id: 'p2',
      title: 'Nike Hightops',
      description: 'Green',
      price: 159.99,
      imageUrl:
          'https://images.unsplash.com/photo-1596644503782-fc9376910762?ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=80',
    ),
    Product(
      id: 'p3',
      title: 'Nike Air',
      description: 'Blue',
      price: 119.99,
      imageUrl:
          'https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
    ),
    Product(
      id: 'p4',
      title: 'Air Jordans',
      description: 'Orange',
      price: 149.99,
      imageUrl:
          'https://images.unsplash.com/photo-1597264658047-ddb23688aa3b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shopr'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
