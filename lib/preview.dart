import 'package:flutter/material.dart';

class Preview extends StatelessWidget {
  const Preview({super.key});

  // TODO: Create render texture and pass to render

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1080 / 3,
      color: Color.fromARGB(255, 0, 0, 255),
    );
  }
}
