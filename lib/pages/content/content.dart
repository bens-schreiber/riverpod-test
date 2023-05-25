import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpodtest/pages/content/cat_fact/cat_fact_page.dart';
import 'package:riverpodtest/pages/content/home/home_page.dart';
import 'package:riverpodtest/pages/content/spam/spam_page.dart';
import 'package:riverpodtest/providers/providers.dart';

typedef B = BottomNavigationBarItem;
const _pages = [HomePage(), CatFactPage(), SpamPage()];

class Content extends ConsumerWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(pageControllerProvider);
    return Scaffold(
      body: _pages[pageController],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageController,
          onTap: ((value) {
            ref.read(pageControllerProvider.notifier).goToPage(value);
          }),
          items: const [
            B(icon: Icon(Icons.home), label: "Home"),
            B(icon: Icon(Icons.fact_check), label: "Cat Fact"),
            B(icon: Icon(Icons.food_bank), label: "Spam")
          ]),
    );
  }
}
