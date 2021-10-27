import 'package:flutter/material.dart';
import 'package:products/widgets/products/products.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  HomePage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                leading: Icon(
                  Icons.edit,
                  color: Colors.pink,
                ),
                title: Text('Manage Products'),
                onTap: () {
                  Navigator.pushNamed(context, '/admin');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('EasyList'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        body: Products(products));
  }
}
