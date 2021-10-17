import 'package:flutter/material.dart';

import '../widgets/products.dart';

class ProductsManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsManager(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*ProductControl(addProduct),*/
        Expanded(child: Products(products)),
      ],
    );
  }
}
