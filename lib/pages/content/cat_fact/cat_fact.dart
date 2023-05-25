import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class CatFact extends HookConsumerWidget {
  const CatFact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catFact = ref.watch(catFutureProvider);
    return catFact.when(
        data: (data) => Text(
              data.fact,
              textAlign: TextAlign.center,
            ),
        error: ((error, stackTrace) => const Placeholder()),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
