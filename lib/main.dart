import 'package:flutter/material.dart';
import 'package:products/pages/auth.dart';
import 'package:products/pages/home-page.dart';
import 'package:products/pages/product-page.dart';
import 'package:products/pages/product_admin.dart';

void main() {
  /* debugPaintSizeEnabled = true;
  debugPaintBaselinesEnabled = true;
  debugPaintPointersEnabled = true;*/
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  List<Map<String, dynamic>> _products = [];

  void _addProduct(Map<String, dynamic> product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        //when use the next route don't use the home property
        '/': (BuildContext context) => AuthPage(),
        ///////////
        '/admin': (BuildContext context) =>
            ProductAdmin(_products, _addProduct, _deleteProduct),
      },
      onGenerateRoute: (RouteSettings setting) {
        final List<String> pathElements = setting.name!.split("/");
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  _products[index]['title']!, _products[index]['imageUrl']!));
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (BuildContext context) {
          return HomePage(_products);
        });
      },
      theme: ThemeData(
          primaryColor: Colors.pinkAccent,
          accentColor: Colors.pinkAccent,
          primarySwatch: Colors.indigo,
          brightness: Brightness.light),
      // home: AuthPage()
    );
  }
}
