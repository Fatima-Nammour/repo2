import 'package:flutter/material.dart';
import 'package:products/pages/product_create.dart';
import 'package:products/pages/product_list.dart';

class ProductAdmin extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductAdmin(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: [
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All Product'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Manage Products'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.create),
                  child: Text('Create Product'),
                ),
                Tab(
                  icon: Icon(Icons.list),
                  child: Text('My Product'),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [ProductCreatePage(addProduct), ProductListPage()],
          )),
    );
  }
}
