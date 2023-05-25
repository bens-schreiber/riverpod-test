import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/providers/providers.dart';

class DialogZone extends ConsumerWidget {
  final Widget child;
  final Widget dialog;
  const DialogZone({required this.child, required this.dialog, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dialogDisplaying = ref.watch(dialogZoneProvider);
    return dialogDisplaying
        ? Stack(
            children: [
              IgnorePointer(child: child),
              Center(
                child: dialog,
              ),
            ],
          )
        : child;
  }
}

class SampleDialogWidget extends ConsumerWidget {
  const SampleDialogWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CupertinoAlertDialog(
        title: const Text("We interupt this program"),
        content: const Text(
            "to annoy you and make things generally more irritating"),
        actions: [
          CupertinoDialogAction(
              child: const Text("OK"),
              onPressed: () => ref.read(dialogZoneProvider.notifier).hide())
        ]);
  }
}
