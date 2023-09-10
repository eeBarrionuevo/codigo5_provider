import 'package:codigo5_provider/pages/detail_page.dart';
import 'package:codigo5_provider/providers/api_provider.dart';
import 'package:codigo5_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider =
        Provider.of<CounterProvider>(context, listen: false);

    ApiProvider apiProvider = Provider.of<ApiProvider>(context, listen: false);

    apiProvider.getCharactersProvider();

    print("BUILDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD");

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
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(counterProvider.counter.toString()),
      //       Consumer<CounterProvider>(
      //         builder: (context, provider, _) {
      //           return Text(provider.counter.toString());
      //         },
      //       ),
      //       Consumer<CounterProvider>(
      //         builder: (context, provider, _) {
      //           return Text(provider.description);
      //         },
      //       ),
      //       ...counterProvider.names.map((e) => Text(e)),
      //     ],
      //   ),
      // ),
      body: Consumer<ApiProvider>(
        builder: (context, provider, _) {
          return ListView.builder(
            itemCount: provider.characters.length,
            itemBuilder: (context, index) {
              return Text(provider.characters[index]["name"]);
            },
          );
        },
      ),
    );
  }
}
