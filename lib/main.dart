import 'package:codigo5_provider/pages/home_page.dart';
import 'package:codigo5_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // CounterProvider(),
        ChangeNotifierProvider(
            create: (BuildContext context) => CounterProvider()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
