import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo1/provider_demo.dart';

import 'counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setState Demo'),
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ChangeNotifierProvider(
                      create: (context) => CounterModel(),
                      child: ProviderDemo());
                }));
              },
              child: Text('Provider')),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text(
                  '+1',
                  style: TextStyle(color: Colors.green),
                )),
            Text('$counter'),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: Text(
                  '-1',
                  style: TextStyle(color: Colors.red),
                )),
          ],
        ),
      ),
    );
  }
}
