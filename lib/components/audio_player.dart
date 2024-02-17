import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart' as ap;

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({
    required this.source,
    required this.onDelete,
    required this.audioPath,
    Key? key,
  }) : super(key: key);

  final ap.AudioSource source;
  final VoidCallback onDelete;
  final String audioPath;

  @override
  AudioPlayerState createState() => AudioPlayerState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ap.AudioSource>('source', source));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onDelete', onDelete));
  }
}

class AudioPlayerState extends State<AudioPlayer> {
  static const double _controlSize = 43.77;

  final ap.AudioPlayer _audioPlayer = ap.AudioPlayer();
  late StreamSubscription<ap.PlayerState> _playerStateChangedSubscription;
  late StreamSubscription<Duration?> _durationChangedSubscription;
  late StreamSubscription<Duration> _positionChangedSubscription;

  String level = '';

  @override
  void initState() {
    _playerStateChangedSubscription = _audioPlayer.playerStateStream.listen((ap.PlayerState state) async {
      if (state.processingState == ap.ProcessingState.completed) {
        await stop();
      }
      setState(() {});
    });
    _positionChangedSubscription = _audioPlayer.positionStream.listen((Duration position) => setState(() {}));
    _durationChangedSubscription = _audioPlayer.durationStream.listen((Duration? duration) => setState(() {}));
    _init();

    super.initState();
  }

  Future<void> _init() async {
    await _audioPlayer.setAudioSource(widget.source);
  }

  @override
  void dispose() {
    _playerStateChangedSubscription.cancel();
    _positionChangedSubscription.cancel();
    _durationChangedSubscription.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Listen to your current recorded voice',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: Color(0xff191c20),
                height: 1.429,
                letterSpacing: 0.10,
              ),
            ),
            const SizedBox(
              height: 9.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildControl(),
                _buildSlider(MediaQuery.of(context).size.width - 30),
              ],
            ),
            const SizedBox(
              height: 56.75,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 136,
                  height: 47.62716,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        width: 1.058,
                        color: Color(0xff2c6a46),
                      ),
                    ),
                    onPressed: () {
                      _audioPlayer.stop().then((value) => widget.onDelete());
                    },
                    child: const Text('Record Again',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.70,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2c6a46),
                        height: 1.333,
                        letterSpacing: 0.53,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.58,
                ),
                SizedBox(
                  width: 136,
                  height: 47.62716,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2c6a46),
                    ),
                    onPressed: () async {
                      debugPrint(widget.audioPath);

                      try {
                        var request = http.MultipartRequest('POST', Uri.parse('https://actemo-server-lc5owkzmdq-an.a.run.app/predict'));
                        request.headers.addAll({'Content-Type': 'audio/mp4'});
                        request.files.add(
                            await http.MultipartFile.fromPath('file', widget.audioPath)
                        );
                        request.fields['emotion'] = 'Angry';

                        var response = await request.send();
                        var result = await http.Response.fromStream(response);

                        var temp = convert.jsonDecode(result.body) as Map<String, dynamic>;
                        setState(() {
                          level = temp['level'];
                        });
                        debugPrint(level);
                      } catch (e) {
                        debugPrint(e.toString());
                      }

                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          barrierColor: Colors.black.withOpacity(0.3199999928474426),
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.18),
                              ),
                              backgroundColor: Colors.white,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                width: 324.27,
                                height: 166.14,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Achievement',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        height: 1.429,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('assets/analysis/analysis_${level.toLowerCase()}.png',
                                          width: 35.21,
                                        ),
                                        SizedBox(
                                          width: 15.0,
                                        ),
                                        SizedBox(
                                          height: 53.06,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(level == 'A' ? "You're a Stellar ACTor!" : level == 'B' ? 'ACTivate More' : 'reACT Again',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff191c20),
                                                  height: 1.5,
                                                  letterSpacing: 0.15,
                                                ),
                                              ),
                                              Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Similarity ',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w400,
                                                          color: Colors.black,
                                                          height: 1.429,
                                                          letterSpacing: 0.25,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: level,
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w400,
                                                          color: Color(0xff4088f0),
                                                          height: 1.429,
                                                          letterSpacing: 0.25,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' | Emotion Name',
                                                        style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 14.0,
                                                          fontWeight: FontWeight.w400,
                                                          color: Color(0xff74777f),
                                                          height: 1.429,
                                                          letterSpacing: 0.25,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    // if (level == 'C')
                                    //   Row(
                                    //     mainAxisAlignment: MainAxisAlignment.center,
                                    //     children: [
                                    //       SizedBox(
                                    //         width: 152.0,
                                    //         height: 27.78,
                                    //         child: ElevatedButton(
                                    //           style: ElevatedButton.styleFrom(
                                    //             backgroundColor: Color(0xff4088f0),
                                    //           ),
                                    //           onPressed: () {
                                    //             _audioPlayer.stop().then((value) => widget.onDelete());
                                    //             Navigator.of(context).pop();
                                    //           },
                                    //           child: Text('Try Again',
                                    //             style: TextStyle(
                                    //               fontFamily: 'Roboto',
                                    //               fontSize: 11.0,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: Colors.white,
                                    //               height: 1.455,
                                    //               letterSpacing: 0.50,
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // if (level == 'B')
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: 85,
                                          height: 27.78,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                width: 0.49,
                                                color: Colors.black.withOpacity(0.3199999928474426),
                                              ),
                                            ),
                                            onPressed: () {
                                              // 다시 하도록 유도
                                              // Navigator.of(context).pop();
                                            },
                                            child: Text('Finish',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff4088f0),
                                                height: 1.455,
                                                letterSpacing: 0.50,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6.26,
                                        ),
                                        SizedBox(
                                          width: 105,
                                          height: 27.78,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xff4088f0),
                                            ),
                                            onPressed: () {
                                              _audioPlayer.stop().then((value) => widget.onDelete());
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Try Again',
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 11.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                                height: 1.455,
                                                letterSpacing: 0.50,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // if (level == 'A')
                                    //   Row(
                                    //     mainAxisAlignment: MainAxisAlignment.center,
                                    //     children: [
                                    //       SizedBox(
                                    //         width: 152.0,
                                    //         height: 27.78,
                                    //         child: ElevatedButton(
                                    //           style: ElevatedButton.styleFrom(
                                    //             backgroundColor: Color(0xff4088f0),
                                    //           ),
                                    //           onPressed: () {
                                    //             // 다시 하도록 유도
                                    //             Navigator.of(context).pop();
                                    //           },
                                    //           child: Text('Finish',
                                    //             style: TextStyle(
                                    //               fontFamily: 'Roboto',
                                    //               fontSize: 11.0,
                                    //               fontWeight: FontWeight.w500,
                                    //               color: Colors.white,
                                    //               height: 1.455,
                                    //               letterSpacing: 0.50,
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                  ],
                                ),
                              ),
                            );
                          }
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Confirm',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12.70,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            height: 1.333,
                            letterSpacing: 0.53,
                          ),
                        ),
                        SizedBox(
                          width: 5.29,
                        ),
                        Icon(Icons.check_circle_outline,
                          size: 17.99,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildControl() {
    return GestureDetector(
      onTap: () {
        if (_audioPlayer.playerState.playing) {
          pause();
        } else {
          play();
        }
      },
      child: Container(
        width: 43.77,
        height: 43.77,
        decoration: BoxDecoration(
          color: const Color(0xff2c6a46),
          borderRadius: BorderRadius.circular(182.39),
        ),
        child: _audioPlayer.playerState.playing ? const Icon(Icons.pause, color: Colors.white) : const Icon(Icons.play_arrow, color: Colors.white),
      ),
    );
  }

  Widget _buildSlider(double widgetWidth) {
    final Duration position = _audioPlayer.position;
    final Duration? duration = _audioPlayer.duration;
    bool canSetValue = false;

    if (duration != null) {
      canSetValue = position.inMilliseconds > 0;
      canSetValue &= position.inMilliseconds < duration.inMilliseconds;
    }

    double width = widgetWidth - _controlSize;

    return SizedBox(
      width: width,
      child: Slider(
        activeColor: const Color(0xff001b3e),
        inactiveColor: const Color(0xff001b3e),
        onChanged: (double v) {
          if (duration != null) {
            final double position = v * duration.inMilliseconds;
            _audioPlayer.seek(Duration(milliseconds: position.round()));
          }
        },
        value: canSetValue && duration != null ? position.inMilliseconds / duration.inMilliseconds : 0.0,
      ),
    );
  }

  Future<void> play() {
    return _audioPlayer.play();
  }

  Future<void> pause() {
    return _audioPlayer.pause();
  }

  Future<void> stop() async {
    await _audioPlayer.stop();
    return _audioPlayer.seek(Duration.zero);
  }
}