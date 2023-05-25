import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';
import 'package:riverpodtest/util/util.dart';

class CatFact extends HookConsumerWidget {
  const CatFact({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final catFact = ref.watch(catFutureProvider);
    return catFact.when(
        loading: loadingWidget,
        skipLoadingOnRefresh: false,
        data: (data) => Center(
                child: Text(
              data.fact,
              textAlign: TextAlign.center,
            )),
        error: ((error, stackTrace) => const Placeholder()));
  }
}
