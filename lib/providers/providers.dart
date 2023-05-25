import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodtest/api/models/catfactmodel.dart';

// wait 3 seconds then return the splash page location
final splashPageProvider = FutureProvider((ref) async {
  await Future.delayed(const Duration(seconds: 3));
  return "/home";
});

// Responsible for the rate intStreamProvider produces ints
final clockRateProvider = StateNotifierProvider<ClockRate, double>((ref) {
  return ClockRate();
});

class ClockRate extends StateNotifier<double> {
  ClockRate() : super(1);

  final _dx = 0.2;

  void increment() {
    state += _dx;
  }

  void decrement() {
    if (state - _dx <= 0) return;
    state -= _dx;
  }
}

// Fires off a value 1-59 on an interval decided by clockRateProvider
final intStreamProvider = StreamProvider<int>((ref) async* {
  final rate = ref.watch(clockRateProvider);
  int iterations = 0;
  while (true) {
    // Wait at the rate given
    await Future.delayed(Duration(milliseconds: (rate * 1000).round()));

    // 1-59
    yield (((iterations++) % 59) + 1);
  }
});

final catFutureProvider = FutureProvider<CatFactModel>((ref) async {
  HttpClient httpClient = HttpClient();
  HttpClientRequest request =
      await httpClient.getUrl(Uri.parse('https://catfact.ninja/fact'));
  HttpClientResponse response = await request.close();
  String responseBody = await response.transform(utf8.decoder).join();
  return CatFactModel.fromJson(jsonDecode(responseBody));
});
