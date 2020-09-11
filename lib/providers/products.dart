import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
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


  List<Product> get items {
    return [..._items];  // return a copy so you can't edit _items anywhere else
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}