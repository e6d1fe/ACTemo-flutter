import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound_record/flutter_sound_record.dart';

class AudioRecorder extends StatefulWidget {
  const AudioRecorder({required this.onStop, Key? key}) : super(key: key);

  final void Function(String path) onStop;

  @override
  State<AudioRecorder> createState() => _AudioRecorderState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<void Function(String path)>.has('onStop', onStop));
  }
}

class _AudioRecorderState extends State<AudioRecorder> {
  bool _isRecording = false;
  int _recordDuration = 0;
  Timer? _timer;
  final FlutterSoundRecord _audioRecorder = FlutterSoundRecord();

  @override
  void initState() {
    _isRecording = false;
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _audioRecorder.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 360) / 2, right: (MediaQuery.of(context).size.width - 360) / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Tips for your ACTion',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: Color(0xff2c6a46),
              height: 1.429,
              letterSpacing: 0.10,
            ),
          ),
          const SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Image.asset('assets/act_guide/volume.png',
                height: 41.03,
              ),
              const SizedBox(
                width: 11.0,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Volume',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.333,
                      letterSpacing: 0.50,
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text('Use different levels of volume to create impact\nand attention.',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.333,
                      letterSpacing: 0.40,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 13.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10.0,
              ),
              Image.asset('assets/act_guide/intonation.png',
                height: 41.03,
              ),
              const SizedBox(
                width: 11.0,
              ),
              Expanded(
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Intonation',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.333,
                        letterSpacing: 0.50,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text('Vary the rise and fall of your voice at the end of sentences to indicate your meaning and attitude.',
                      softWrap: true,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        height: 1.333,
                        letterSpacing: 0.40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              recordStopControl(),
            ],
          ),
        ],
      ),
    );
  }

  Widget recordStopControl() {
    return Container(
      width: 307.0,
      height: 60,
      decoration: BoxDecoration(
        color: _isRecording ? const Color(0xffffdad6) : null,
        gradient: _isRecording ? null : const LinearGradient(
          begin: Alignment(0.78, -0.63),
          end: Alignment(-0.78, 0.63),
          colors: [
            Color(0xffaedcba), Color(0xff4285f4),
          ],
        ),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 1.08,
          color: Colors.black.withOpacity(0.10000000149011612),
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: () {
          _isRecording ? _stop() : _start();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_isRecording)
              const Text('Recording now ...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff410002),
                  height: 1.429,
                  letterSpacing: 0.10,
                ),
              ),
            if (_isRecording)
              const SizedBox(
                height: 5.0,
              ),
            if (_isRecording)
              const Text('Tap to stop recording',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff410002),
                  height: 1.333,
                  letterSpacing: 0.50,
                ),
              ),
            if (!_isRecording)
              const Text('Press here to ACT your emotion!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  height: 1.429,
                  letterSpacing: 0.10,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _start() async {
    try {
      if (await _audioRecorder.hasPermission()) {
        await _audioRecorder.start();

        bool isRecording = await _audioRecorder.isRecording();
        setState(() {
          _isRecording = isRecording;
          _recordDuration = 0;
        });

        _startTimer();
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> _stop() async {
    _timer?.cancel();
    final String? path = await _audioRecorder.stop();
    widget.onStop(path!);
    setState(() => _isRecording = false);
  }

  void _startTimer() {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() => _recordDuration++);
    });
  }
}