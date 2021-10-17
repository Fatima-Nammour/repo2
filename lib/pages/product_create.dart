import 'package:flutter/material.dart';
import 'package:products/components/styles.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;

  ProductCreatePage(this.addProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String _titleValue = '';
  String _descriptionValue = '';
  double _price = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (String value) {
                setState(() {
                  _titleValue = value;
                });
              },
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  decorationColor: Theme.of(context).accentColor),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelStyle: TextStyle(
                    fontSize: 20.0, color: Theme.of(context).accentColor),
                labelText: 'Title',
                focusColor: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (String value) {
                setState(() {
                  _descriptionValue = value;
                });
              },
              maxLines: 4,
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  decorationColor: Theme.of(context).accentColor),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelStyle: TextStyle(
                    fontSize: 20.0, color: Theme.of(context).accentColor),
                labelText: 'Description',
                focusColor: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (String value) {
                setState(() {
                  _price = double.parse(value);
                });
              },
              keyboardType: TextInputType.number,
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  decorationColor: Theme.of(context).accentColor),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).accentColor,
                  ),
                ),
                labelStyle: TextStyle(
                    fontSize: 20.0, color: Theme.of(context).accentColor),
                labelText: 'Price',
                focusColor: Theme.of(context).accentColor,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: ElevatedButton(
              style: styButton,
              child: Text('Save'),
              onPressed: () {
                /*showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: Text('This is a Modal!'),
                      );
                    });*/

                final Map<String, dynamic> product = {
                  'title': _titleValue,
                  'description': _descriptionValue,
                  'price': _price,
                  'imageUrl': 'assets/images/food.jpg'
                };
                widget.addProduct(product);
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
