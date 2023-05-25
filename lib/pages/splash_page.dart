import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splash = ref.watch(splashPageProvider);
    return splash.when(
        data: (page) {
          // Little bit hacky, but I can't think of another great way to transition
          // using GoRouter since we are in the middle of building a widget
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.go(page);
          });

          return const _SplashPageDisplay();
        },
        error: ((error, stackTrace) => const Placeholder()),
        loading: () => const _SplashPageDisplay());
  }
}

class _SplashPageDisplay extends StatelessWidget {
  const _SplashPageDisplay({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text("App Logo"), CircularProgressIndicator()],
      )));
}
