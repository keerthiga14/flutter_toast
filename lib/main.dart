

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyToastPage(),
    );
  }
}



class MyToastPage extends StatefulWidget {
  @override
  _MyToastPageState createState() => _MyToastPageState();
}

class _MyToastPageState extends State<MyToastPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Short Toast'),
                    onPressed: () => showToast("Show Short Toast")),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Long Toast'),
                    onPressed: () => showToast("Show Long Toast", duration: Toast.LENGTH_LONG)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Bottom Toast'),
                    onPressed: () => showToast("Show Bottom Toast", gravity: Toast.BOTTOM)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Center Toast'),
                    onPressed: () => showToast("Show Center Toast", gravity: Toast.CENTER)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RaisedButton(
                    child: Text('Show Top Toast'),
                    onPressed: () => showToast(
                        """  ”""",
                        gravity: Toast.TOP)),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showToast(String msg, {int duration, int gravity}) {
    Toast.show(msg, context, duration: duration, gravity: gravity);
  }
}
