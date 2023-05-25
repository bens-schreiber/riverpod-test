import 'package:flutter/material.dart';
import 'package:riverpodtest/pages/content/cat_fact/cat_fact.dart';

class CatFactPage extends StatelessWidget {
  const CatFactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [CatFact()]),
    );
  }
}
