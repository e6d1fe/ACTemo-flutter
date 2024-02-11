import 'package:flutter/material.dart';

import 'package:actemo_flutter/components/navbar.dart';

class EmotionalBoard extends StatefulWidget {
  const EmotionalBoard({super.key});

  @override
  State<EmotionalBoard> createState() => _EmotionalBoardState();
}

class _EmotionalBoardState extends State<EmotionalBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffededf4),
        title: const Text('Identification',
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
          onPressed: () {},
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 26.0, left: 27.74, right: 27.74),
          child: ListView(
            children: [
              const Text('Emotional Board',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 22.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001e2f),
                  height: 1.272,
                ),
              ),
              const SizedBox(
                height: 24.5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.05),
                      width: 160.0,
                      height: 121.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: const Color(0xffdddfe5),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/emotional_board_valence.png',
                                height: 43.64,
                              ),
                              const SizedBox(
                                width: 11.43,
                              ),
                              const Text('Valence',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14.252,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  height: 1.429,
                                  letterSpacing: 0.102,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('High',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24.433,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff272927),
                                  height: 1.333,
                                ),
                              ),
                              Text('hi')
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15.05),
                      width: 160.0,
                      height: 121.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Color(0xffdddfe5),
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/emotional_board_arousal.png',
                                height: 43.64,
                              ),
                              const SizedBox(
                                width: 11.43,
                              ),
                              const Text('Arousal',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14.252,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  height: 1.429,
                                  letterSpacing: 0.102,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('Low',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24.433,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff272927),
                                  height: 1.333,
                                ),
                              ),
                              Text('hi')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
