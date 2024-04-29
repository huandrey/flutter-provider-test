import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    super.key, 
    required this.title,
  });
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(""),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                context.watch<CounterProvider>().counter.toString(),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             FloatingActionButton(
          onPressed: () {
            context.read<CounterProvider>().increment();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
         FloatingActionButton(
          onPressed: () {
            context.read<CounterProvider>().decrement();
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
      ],
      )
    );
  }
}
