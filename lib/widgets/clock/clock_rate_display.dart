part of clock;

class ClockRateDisplay extends HookConsumerWidget {
  const ClockRateDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      Text("Rate: ${ref.watch(clockRateProvider).toStringAsFixed(2)}");
}
