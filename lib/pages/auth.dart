import 'package:flutter/material.dart';
import 'package:products/components/styles.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _email = '';
  String _password = '';
  bool _acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Center(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (String value) {
                    setState(() {
                      _email = value;
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
                    labelText: 'E-mail',
                    focusColor: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (String value) {
                    setState(() {
                      _password = value;
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
                    labelText: 'Password',
                    focusColor: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: SwitchListTile(
                  dense: true,
                  title: Text('Accept Terms'),
                  value: _acceptTerms,
                  onChanged: (bool isCheck) {
                    setState(() {
                      _acceptTerms = isCheck;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                child: ElevatedButton(
                  style: styButton,
                  child: Text('Login'),
                  onPressed: () {
                    print('login');
                    /*showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: Text('This is a Modal!'),
                      );
                    });*/
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
