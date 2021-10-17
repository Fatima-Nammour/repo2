import 'package:flutter/material.dart';

import '../components/styles.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']!),
          Text(products[index]['title']!),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: <Widget>[
              ElevatedButton(
                style: styButton,
                onPressed: () {
                  Navigator.pushNamed<bool>(
                    context,
                    '/product/' + index.toString(),
                  )
                      /*.then(
                    (value) => {
                      if (value!)
                        {deleteProduct(index), print('valueeee$value')}
                    },
                  )*/
                      ;
                  print(products);
                },
                child: Text('Details'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget? _buildProductList() {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
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
            itemBuilder: _buildProductItem,
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
