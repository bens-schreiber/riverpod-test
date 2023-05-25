import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class SpamWidget extends HookConsumerWidget {
  const SpamWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seconds = ref.watch(intStreamProvider);

    return seconds.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      loading: () => const CircularProgressIndicator(),
      error: ((error, stackTrace) => const Placeholder()),
      data: (data) => SizedBox(
        height: 300,
        child: ListView.builder(
            itemCount: data % 10 + 1,
            itemBuilder: (context, index) => Text(
                  "spam${index % 3 > 1 ? "ity" : ""}",
                  textAlign: TextAlign.center,
                )),
      ),
    );
  }
}
