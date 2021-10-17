import 'package:flutter/material.dart';
import 'package:products/components/styles.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageURL;
  ProductPage(this.title, this.imageURL);

  showWarningDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure? '),
            content: Text('This action can not undone'),
            actions: [
              ElevatedButton(
                style: styButton,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Discard'),
              ),
              ElevatedButton(
                style: styButton,
                onPressed: () {
                  //The next navigation close the dialog
                  Navigator.pop(context);
                  //The next navigation delete the product and pop the ProductPage
                  Navigator.pop(context, true);
                },
                child: Text('Delete'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Image.asset(imageURL),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: styButton,
                onPressed: () {
                  showWarningDialog(context);
                  print('after pop');
                },
                child: Text('Delete'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
