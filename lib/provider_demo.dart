import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class ProviderDemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    final counter = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('With Provider'),
      ),
      body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: Text(
                    '+1',
                    style: TextStyle(color: Colors.green),
                  )),
              Text('${counter.count}'),

              OutlinedButton(
                  onPressed: () {
                    counter.decrement();
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

