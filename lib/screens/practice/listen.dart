import 'package:flutter/material.dart';

import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/data/script.dart';

import 'package:actemo_flutter/components/chat.dart';

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
      appBar: AppBar(
        backgroundColor: const Color(0xffededf4),
        title: const Text('practice',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: 0.15,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                  color: const Color(0xff94d5a8),
                  borderRadius: BorderRadius.circular(12.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      '${EmotionTitle[index]}',
                      style: const TextStyle(
                        color: Color(0xff001b3e),
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    height: 60.0,
                    child: Flexible(
                      child: Text(
                        '${Scene[index]}',
                        style: const TextStyle(
                            color: Color(0xff001b3e),
                            fontSize: 14.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Text('Listen to the acting of AI voice actor',
              style: TextStyle(
                color: Color(0xFF191C20),
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.10,
              ),
              textAlign: TextAlign.left,
            ),
            // Container

            // 상황 음성 파일


            // 상황 대본 chat
            const SizedBox(height: 15.0),
            const Text('Script',
              style: TextStyle(
                color: Color(0xff191c20),
                fontSize: 16.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.10,
              ),
              textAlign: TextAlign.start,
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              child: chat(index: index),
            ),

            // 상황 녹음

          ],
        ),
      ),
    );
  }
}