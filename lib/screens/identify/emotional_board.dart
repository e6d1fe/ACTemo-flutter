import 'package:flutter/material.dart';

import 'package:actemo_flutter/components/navbar.dart';

import 'package:actemo_flutter/utils/emotion_list.dart';
import 'package:actemo_flutter/data/contents.dart';

import 'package:actemo_flutter/screens/identify/emotion_card.dart';

class EmotionalBoard extends StatefulWidget {
  EmotionalBoard({required this.emotionCategory, super.key});

  int? emotionCategory;

  @override
  State<EmotionalBoard> createState() => _EmotionalBoardState();
}

class _EmotionalBoardState extends State<EmotionalBoard> {
  String? selectedEmotion;

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
              // Emotional Board
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
              // valence & arousal degree
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // valence
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
                              const Text('High',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24.433,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff272927),
                                  height: 1.333,
                                ),
                              ),
                              Image.asset('assets/emotional_board_high.png',
                                height: 40.0,
                                color: const Color(0xff4285f4),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // arousal
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
                              const Text('Low',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 24.433,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff272927),
                                  height: 1.333,
                                ),
                              ),
                              Image.asset('assets/emotional_board_low.png',
                                height: 40.0,
                                color: const Color(0xffaedcba),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 27.03,
              ),
              // emotion coordinate
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // based on russell's circumplex model
                  const Text("Based on Russell's Circumplex Model",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 11.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff44474e),
                      height: 1.455,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 5.01,
                  ),
                  // y axis scale & containers
                  SizedBox(
                    height: 206.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // y axis scale
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // high
                            RotatedBox(
                                quarterTurns: 3,
                                child: Text("High",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff0f0f7),
                                    height: 1.455,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                            ),
                            // valence
                            RotatedBox(
                                quarterTurns: 3,
                                child: Text("Valence",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff74777f),
                                    height: 1.455,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                            ),
                            // low
                            RotatedBox(
                                quarterTurns: 3,
                                child: Text("Low",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xfff0f0f7),
                                    height: 1.455,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 6.24,
                        ),
                        // containers
                        Column(
                          children: [
                            // unpleasant, activation
                            Row(
                              children: [
                                // unpleasant
                                GestureDetector(
                                  onTap: () {
                                    debugPrint('unpleasant container was tapped');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 7.19, left: 9.0),
                                    width: 161.0,
                                    height: 103.0,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.55, -0.83),
                                        end: Alignment(-0.55, 0.83),
                                        colors: [Color(0xFF4285F4), Color(0xFFAEDCBA)],
                                      ),
                                      border: Border(
                                        top: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        bottom: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        left: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        right: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Unpleasant',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                            height: 1.5,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // activation
                                GestureDetector(
                                  onTap: () {
                                    debugPrint('activation container was tapped');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 7.19, right: 9.0),
                                    width: 161.0,
                                    height: 103.0,
                                    // color: Colors.red,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        bottom: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        left: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        right: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Activation',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffdddfe5),
                                            height: 1.5,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // deactivation, pleasant
                            Row(
                              children: [
                                // deactivation
                                GestureDetector(
                                  onTap: () {
                                    debugPrint('deactivation container was tapped');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 7.19, left: 9.0),
                                    width: 161.0,
                                    height: 103.0,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        bottom: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        left: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        right: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                      ),
                                    ),
                                    // color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Deactivation',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffdddfe5),
                                            height: 1.5,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // pleasant
                                GestureDetector(
                                  onTap: () {
                                    debugPrint('pleasant container was tapped');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 7.19, right: 9.0),
                                    width: 161.0,
                                    height: 103.0,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        bottom: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                        left: BorderSide(width: 0.50, color: Color(0xFFDDDFE5)),
                                        right: BorderSide(width: 1, color: Color(0xFFDDDFE5)),
                                      ),
                                    ),
                                    // color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Pleasant',
                                          style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffdddfe5),
                                            height: 1.5,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 6.24,
                  ),
                  // x axis scale
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 55.48 - 322.0,
                      ),
                      const SizedBox(
                        width: 322.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Low',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 11.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff0f0f7),
                                height: 1.455,
                                letterSpacing: 0.5,
                              ),
                            ),
                            // arousal
                            Text('Arousal',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 11.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff74777f),
                                height: 1.455,
                                letterSpacing: 0.5,
                              ),
                            ),
                            // low
                            Text('High',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 11.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xfff0f0f7),
                                height: 1.455,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25.53,
              ),
              const Text('Predicted Emotions',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff191c20),
                  height: 1.5,
                  letterSpacing: 0.15,
                ),
              ),
              const Text('These are the predicted emotions we determined based on your valence and arousal identification results.',
                softWrap: true,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff74777f),
                  height: 1.333,
                  letterSpacing: 0.4,
                ),
              ),
              const SizedBox(
                height: 12.47,
              ),
              // emotion list (radio list tiles)
              ListView.builder(
                shrinkWrap: true,
                itemCount: emotionList[0].length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      RadioListTile(
                        title: Text(emotionList[0][index]),
                        groupValue: selectedEmotion,
                        value: emotionList[0][index],
                        onChanged: (value) {
                          setState(() {
                            selectedEmotion = value.toString();
                          });
                        },
                        activeColor: const Color(0xff4088f0),
                        contentPadding: const EdgeInsets.all(16.0),
                        selectedTileColor: const Color(0xffd7e3ff),
                        tileColor: const Color(0xffd7e3ff),
                        secondary: IconButton(
                          icon: const Icon(Icons.arrow_right),
                          onPressed: () {
                            // lead to corresponding emotion archive page
                            debugPrint('lead to emotion page');
                            var idx = EmotionTitle.indexOf(emotionList[0][index]);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EmotionCard(idx: idx)));
                          },
                        ),
                      ),
                      if (index != emotionList.length - 1)
                        const SizedBox(
                          height: 8.0,
                        ),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 42.05,
              ),
              // Confirm button
              SizedBox(
                width: 200.0,
                height: 48.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedEmotion != null ? const Color(0xff4285f4) : const Color(0xffe0e2ec),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.25),
                    ),
                  ),
                  onPressed: () {
                    // var index = EmotionTitle.indexOf(selectedEmotion!);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => EmotionCard(index: index)));
                    // proceed to 2nd stage - practice
                    debugPrint(widget.emotionCategory.toString());
                  },
                  child: const Text('Confirm',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 0.1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34.92,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}