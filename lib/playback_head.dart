import 'package:flutter/material.dart';

class PlaybackHead extends StatelessWidget {
  const PlaybackHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
    );
  }
}
