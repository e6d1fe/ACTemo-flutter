import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart' as ap;

import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/data/script.dart';

import 'package:actemo_flutter/components/chat.dart';
import 'package:actemo_flutter/components/custom_appbar.dart';
import 'package:actemo_flutter/components/audio_player.dart';

import 'package:actemo_flutter/screens/practice/act.dart';

class Listen extends StatefulWidget {
  const Listen({super.key, required this.index});

  final int index;

  @override
  State<Listen> createState() => _ListenState(index: index);
}

class _ListenState extends State<Listen> {
  final int index;
  _ListenState({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(location: 'ACTion'),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(5,25,5,5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 360.0,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xff94d5a8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(EmotionTitle[widget.index],
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff001b3e),
                        //height: 1.273,
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(Scene[widget.index],
                      softWrap: true,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff001b3e),
                        height: 1.333,
                        letterSpacing: 0.40,
                      ),
                    ),
                  ],
                ),
              ),
        
              // 상황 대본 chat
              const SizedBox(height: 25,),
              Container(
                padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - 360) / 2, right: (MediaQuery.of(context).size.width - 360) / 2),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9FF)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Script',
                      style: TextStyle(
                        color: Color(0xFF191C20),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.10,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: chat(index: index),
                    ),
                  ],
                ),
              ),
        
              // AI 대본
              const SizedBox(height: 25,),
        
              // 녹음본 재생 넣기
              AudioPlayer(
                  source: ap.AudioSource.asset('assets/act_audio/${EmotionTitle[index]}.mp3'),
                  onDelete: () {},
                  audioPath: 'assets/act_audio/${EmotionTitle[index]}.mp3',
                  index: index,
                  isPractice: false,
              ),
        
              // 페이지 이동
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF2C6A46)
                  ),
                  child: TextButton(onPressed: () => {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                        Act(index: index))),
                    },
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Next',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                            )
                          ),
                          Icon(Icons.navigate_next, color: Colors.white,)
                        ],
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}