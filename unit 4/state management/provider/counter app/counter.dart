import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/model/counter-provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   final counter = Provider.of<CounterProvider>(context);
  //   final count = counter.count;
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Counter Example'),
  //     ),
  //     body: Center(
  //       child: Text(
  //         'You have pushed the button this many times: $count',
  //         textAlign: TextAlign.center,
  //         style: Theme.of(context).textTheme.headline6,
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //         onPressed: () => {
  //           counter.increment(),
  //         }, child: const Icon(Icons.add)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // final counter = Provider.of<CounterProvider>(context);
    // final count = counter.count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Text(
                'You have pushed the button this many times: ${provider.count}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
            onPressed: () => {
                  provider.increment(),
                },
            child: const Icon(Icons.add)),
          ),
              ],
            );}
            ,
        ),
      ),
     
    );
  }
}
