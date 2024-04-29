import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/core/home/home_page.dart';
import 'package:provider_test/providers/counter_provider.dart';

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (cxt) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Counter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
