import 'package:flutter/material.dart';

import '../components/styles.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: styButton,
        child: Text('Add Product'),
        onPressed: () {
          addProduct(
              {'title': 'Chocolate', 'imageUrl': 'assets/images/food.jpg'});
        },
      ),
    );
  }
}
