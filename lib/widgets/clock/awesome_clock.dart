part of clock;

class AwesomeClock extends HookConsumerWidget {
  const AwesomeClock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seconds = ref.watch(intStreamProvider);

    return seconds.when(
      skipLoadingOnRefresh: true,
      skipLoadingOnReload: true,
      loading: () => const CircularProgressIndicator(),
      error: ((error, stackTrace) => const Placeholder()),
      data: (data) => Text("Clock: $data"),
    );
  }
}
