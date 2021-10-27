import 'package:flutter/material.dart';
import 'package:products/widgets/products/product_card.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget? _buildProductList() {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(products[index], index),
        itemCount: products.length,
      );
    } else {
      productList = Center(
        child: Text("No products found,please add some"),
      );
      return productList;
    }
  }

  @override
  Widget build(BuildContext context) {
    //we can do following or call _buildProductList method
    return products.length > 0
        ? ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                ProductCard(products[index], index),
            itemCount: products.length,
          )
        : Center(
            child: Text("No products found,please add some"),
          );
  }
}
/*ListView(
children: products.map((element) {
print("inside map " + products.length.toString() + element);
return Card(
child: Column(
children: <Widget>[
Image.asset('assets/images/food.jpg'),
Text(element)
],
),
);
}).toList(),
);*/
