import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/identify/emotional_board.dart';

class IdentifyComplete extends StatefulWidget {
  IdentifyComplete({required this.valence, required this.arousal, super.key});

  String? valence;
  String? arousal;

  @override
  State<IdentifyComplete> createState() => _IdentifyCompleteState();
}

class _IdentifyCompleteState extends State<IdentifyComplete> {
  String? valence;
  String? arousal;

  int? emotionCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/waving_hand.png',
                height: 80.04,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text('Good job!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001e2f),
                  height: 1.286,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text("You've completed\nEmotional Identification",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff001e2f),
                  height: 1.429,
                  letterSpacing: 0.25,
                ),
              ),
              const SizedBox(
                height: 166.52,
              ),
              // Confirm button
              SizedBox(
                width: 300.0,
                height: 48.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4285f4),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.25),
                    ),
                  ),
                  onPressed: () {
                    debugPrint('identify complete: button is pressed');
                    setState(() {
                      valence = widget.valence;
                      arousal = widget.arousal;
                      emotionCategory = getEmotionCategory(valence!, arousal!);
                    });
                    debugPrint(valence);
                    debugPrint(arousal);

                    Navigator.push(context, MaterialPageRoute(builder: (context) => EmotionalBoard(emotionCategory: emotionCategory)));
                  },
                  child: const Text('Continue',
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
            ],
          ),
        ),
      ),
    );
  }

  int getEmotionCategory(String valenceScore, String arousalScore) {
    if (valenceScore == 'positive' && arousalScore == 'high') {
      return 0;
    } else if (valenceScore == 'positive' && arousalScore == 'low') {
      return 1;
    } else if (valenceScore == 'negative' && arousalScore == 'high') {
      return 3;
    } else {
      return 2;
    }
  }
}
