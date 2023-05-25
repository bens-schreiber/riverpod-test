import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/pages/content/cat_fact/cat_fact.dart';
import 'package:riverpodtest/providers/providers.dart';

class CatFactPage extends ConsumerWidget {
  const CatFactPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => ref.refresh(catFutureProvider)),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [CatFact()]),
    );
  }
}
