import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart' as ap;

import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/data/script.dart';

import 'package:actemo_flutter/components/custom_appbar.dart';
import 'package:actemo_flutter/components/audio_recorder.dart';
import 'package:actemo_flutter/components/audio_player.dart';
import 'package:actemo_flutter/components/chat.dart';

class Act extends StatefulWidget {
  const Act({super.key, required this.index});

  final int index;

  @override
  State<Act> createState() => _ActState();
}

class _ActState extends State<Act> {
  bool showPlayer = false;
  ap.AudioSource? audioSource;
  String? audioPath;

  @override
  void initState() {
    showPlayer = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(location: 'ACTion'),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25.0,
            ),
            // emotion name & scene
            Container(
              width: 360.0,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xff94d5a8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(EmotionTitle[widget.index],
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff001b3e),
                      height: 1.273,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(Scene[widget.index],
                    softWrap: true,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff001b3e),
                      height: 1.333,
                      letterSpacing: 0.40,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 360) / 2, right: (MediaQuery.of(context).size.width - 360) / 2),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Script',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xff191c20),
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: chat(index: widget.index),
                  ),
                ],
              ),
            ),
            // script
            const SizedBox(
              height: 20.0,
            ),
            showPlayer ?
            AudioPlayer(
              source: audioSource!,
              onDelete: () {
                setState(() {
                  showPlayer = false;
                });
              },
              audioPath: audioPath!,
              index: widget.index,
              isPractice: true,
            ) :
            AudioRecorder(
              onStop: (String path) {
                setState(() {
                  audioSource = ap.AudioSource.uri(Uri.file(path));
                  audioPath = path;
                  showPlayer = true;
                  // debugPrint(path);
                  // debugPrint(audioSource.toString());
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('showPlayer', showPlayer));
    properties.add(DiagnosticsProperty<ap.AudioSource?>('audioSource', audioSource));
  }
}
