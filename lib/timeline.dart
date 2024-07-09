import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snip/audio_timeline.dart';
import 'package:snip/playback_head.dart';
import 'package:snip/video_timeline.dart';

class Timeline extends StatefulWidget {
  final Image videoThumb;

  const Timeline({super.key, required this.videoThumb});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  double x = 0.0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
        color: Colors.black38,
        child: Row(
          children: [
            Container(width: 10),
            Expanded(
                child: Listener(
                    onPointerMove: (event) {
                      setState(() {
                        if (event.down) {
                          x = min(width - 22, max(0, event.localPosition.dx));
                        }
                      });
                    },
                    onPointerDown: (event) {
                      setState(() {
                        x = min(width - 22, max(0, event.localPosition.dx));
                      });
                    },
                    child: Stack(children: [
                      Positioned(
                          bottom: 0,
                          child: Text(
                              "loc:${(x / (width - 22)).toStringAsFixed(3)}")),
                      ListView(
                        children: [
                          Container(height: 10),
                          VideoTimeline(thumbnail: widget.videoThumb),
                          Container(height: 10),
                          AudioTimeline(),
                          Container(height: 10),
                          AudioTimeline(),
                          Container(height: 10),
                        ],
                      ),
                      Positioned(left: x, child: const PlaybackHead()),
                    ]))),
            Container(width: 10)
          ],
        ));
  }
}
