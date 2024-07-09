import 'package:flutter/material.dart';
import 'package:snip/editor.dart';

void main() {
  runApp(const Snip());
}

class Snip extends StatelessWidget {
  const Snip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Editor(),
    );
  }
}
