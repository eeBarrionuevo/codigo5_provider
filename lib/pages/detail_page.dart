import 'package:codigo5_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Detail Page"),
      ),
      body: Center(
        child: Text(counterProvider.counter.toString()),
      ),
    );
  }
}
