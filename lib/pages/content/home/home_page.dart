import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
              child: const Icon(Icons.plus_one),
              onPressed: () => ref.read(counterProvider.notifier).state++),
          const SizedBox(height: 10),
          FloatingActionButton(
              child: const Icon(Icons.explicit_sharp),
              onPressed: () => ref.read(dialogZoneProvider.notifier).show())
        ]),
        body: Center(
            child: Text(
          "Basic Counter: $count",
          textAlign: TextAlign.center,
        )));
  }
}
