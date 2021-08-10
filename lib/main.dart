import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text="SnackBar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show SnackBar'),
          onPressed: () {
            setState(() {
              text="";
            });
            BuildSnackBar(context);
          },
        ),
      ),
    );
  }

  void BuildSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('تراجع عن حذف عنوان bar'),
      backgroundColor: Colors.amber,
      duration: Duration(seconds: 5),
      action: SnackBarAction(
        label: 'تراجع',
        onPressed: () {
          setState(() {
            text="SnackBar";
          });
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
