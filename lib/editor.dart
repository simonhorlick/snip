import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:snip/audio_timeline.dart';
import 'package:snip/playback_head.dart';
import 'package:snip/preview.dart';
import 'package:snip/timeline.dart';
import 'package:snip/video_timeline.dart';
import 'package:snip/vt_thumb.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  // TODO: Start the analysis pass.

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  final thumbnail =
      Image.memory(Bitmap.fromHeadless(91, 1, list).buildHeaded());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Preview(),
            Expanded(child: Timeline(videoThumb: thumbnail)),
          ],
        ),
      ),
    );
  }
}
