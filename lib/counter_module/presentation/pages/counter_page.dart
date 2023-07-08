import 'package:flutter/material.dart';
import 'package:flutter_architecture/counter_module/application/use_cases/ports/increment_counter.port.usecase.dart';
import 'package:flutter_architecture/injector.dart';

import '../../application/use_cases/ports/decrement_counter.port.usecase.dart';
import '../../application/use_cases/ports/get_counter.port.dart';
import '../../domain/entities/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _incrementCounterUseCase =
      Injector.container.resolve<IIncrementCounterUseCase>();

  final _decrementCounterUseCase =
      Injector.container.resolve<IDecrementCounterUseCase>();

  final _getCounter = Injector.container.resolve<IGetCounter>();

  Counter? _counter;

  @override
  Widget build(BuildContext context) {
    _getCounter.call().then((counter) => setState(() {
          _counter = counter;
        }));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Actual value in counter'),
          Center(
            child: Text(_counter?.value.toString() ?? '0'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () => _incrementCounterUseCase.call(_counter!).then(
                      (value) => setState(() {
                        _counter = value;
                      }),
                    ),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () => _decrementCounterUseCase.call(_counter!).then(
                      (value) => setState(() {
                        _counter = value;
                      }),
                    ),
                icon: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
