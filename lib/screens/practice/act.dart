import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart' as ap;

import 'package:actemo_flutter/components/custom_appbar.dart';
import 'package:actemo_flutter/components/audio_recorder.dart';
import 'package:actemo_flutter/components/audio_player.dart';

class Act extends StatefulWidget {
  const Act({super.key});

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
            // emotion name
            // script
            showPlayer ?
            AudioPlayer(
              source: audioSource!,
              onDelete: () {
                setState(() {
                  showPlayer = false;
                });
              },
              audioPath: audioPath!,
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
