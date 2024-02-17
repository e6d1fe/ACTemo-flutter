/*import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


class AudioPlayerWidget extends StatefulWidget {
  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  final AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  Duration _totalDuration = Duration(seconds: 0);
  Duration _currentPosition = Duration(seconds: 0);

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayer() {
    if (_assetsAudioPlayer.isPlaying.value) {
      _assetsAudioPlayer.pause();
    } else {
      _assetsAudioPlayer.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_assetsAudioPlayer.open != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LinearProgressIndicator(
                  value: _currentPosition.inMilliseconds / _totalDuration.inMilliseconds,
                  minHeight: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF2C6A46),
                  ),
                  child: IconButton(
                    icon: Icon(
                      _assetsAudioPlayer.isPlaying.value
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onPressed: _togglePlayer,
                  ),
                ),
              ],
            ),
          ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
  }

  Future<void> _initAudioPlayer() async {
    await _assetsAudioPlayer.open(
      Audio('assets/audio/calm2.mp3'), // Replace 'your_audio.mp3' with your actual file name
      autoStart: false, // Set to true if you want to auto-play
      showNotification: true,
    );

    _assetsAudioPlayer.current.listen((event) {
      setState(() {
        _totalDuration = event.duration;
        _currentPosition = event.currentPosition;
      });
    });
  }
}

*/