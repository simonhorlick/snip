import 'dart:typed_data';

import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';

class VideoTimeline extends StatelessWidget {
  final Image thumbnail;

  const VideoTimeline({super.key, required this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: FittedBox(
          fit: BoxFit.fill,
          child: thumbnail,
        ));
  }
}
