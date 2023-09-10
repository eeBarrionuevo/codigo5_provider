import 'package:codigo5_provider/pages/detail_page.dart';
import 'package:codigo5_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Provider",
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            icon: Icon(Icons.chevron_right),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.changeCounter();
        },
      ),
      body: Center(
        child: Text(counterProvider.counter.toString()),
      ),
    );
  }
}
