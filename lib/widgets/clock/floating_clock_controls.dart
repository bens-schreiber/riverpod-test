part of clock;

class FloatingClockRateControls extends HookConsumerWidget {
  const FloatingClockRateControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      FloatingActionButton(
        onPressed: ref.read(clockRateProvider.notifier).increment,
        child: const Icon(Icons.exposure_plus_1),
      ),
      const SizedBox(height: 10),
      FloatingActionButton(
          onPressed: ref.read(clockRateProvider.notifier).decrement,
          child: const Icon(Icons.exposure_minus_1)),
    ]);
  }
}
