import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => ref.read(counterProvider.notifier).state++),
        body: Center(
            child: Text(
          "Basic Counter: $count",
          textAlign: TextAlign.center,
        )));
  }
}
