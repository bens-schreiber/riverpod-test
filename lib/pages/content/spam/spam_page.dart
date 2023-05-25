import 'package:flutter/material.dart';
import 'package:riverpodtest/widgets/clock/clock.dart';
import 'package:riverpodtest/pages/content/spam/spam_widget.dart';

class SpamPage extends StatelessWidget {
  const SpamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingClockRateControls(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [ClockRateDisplay(), AwesomeClock(), SpamWidget()]),
    );
  }
}
