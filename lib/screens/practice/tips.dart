import 'package:flutter/material.dart';

import 'package:actemo_flutter/components/custom_appbar.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(location: 'ACTion'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17.0, 20.0, 17.0, 20.0),
          child: ListView(
            children: [
              Image.asset('assets/tips/ACToday.png',
                height: 38.0,
                alignment: Alignment.topLeft,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text('These are several tips for your emotional life.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff74777f),
                  height: 1.333,
                  letterSpacing: 0.40,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text('Identify Your Emotions Yourself',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.429,
                  letterSpacing: 0.10,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 34.0,
                padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.83,
                    color: const Color(0xffdddfe5),
                  ),
                  borderRadius: BorderRadius.circular(8.32),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/tips/recognize.png',
                          width: 19.97124,
                        ),
                        const SizedBox(
                          width: 5.55,
                        ),
                        const Text('6 Steps to Recognize Your Emotions',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.455,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 25.1,
                        ),
                        Container(
                          width: 0.832,
                          height: 135.0,
                          color: const Color(0xffcac4d0),
                        ),
                        const SizedBox(
                          width: 7.55,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('What happened?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('Why do you think that situation happened?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('How did the situation make you feel – emotionally &\nphysically?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('What did you want to do as a result of how you felt?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('What did you do and say?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text('How did your emotions and actions affect you later?',
                              softWrap: true,
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 9.99,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                height: 1.333,
                                letterSpacing: 0.33,
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
                height: 12.0,
              ),
              const Text('Engage in Mindfulness and Meditation Practices',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.429,
                  letterSpacing: 0.10,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 34.0,
                padding: const EdgeInsets.all(10.0),
                color: const Color(0xffd7e3ff),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/tips/breathing.png',
                      width: 29.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Breathing Exercises',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1d1b20),
                              height: 1.333,
                              letterSpacing: 0.50,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Practice deep breathing exercises to promote relaxation and reduce anxiety.',
                            softWrap: true,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff49454f),
                              height: 1.6,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 34.0,
                padding: const EdgeInsets.all(10.0),
                color: const Color(0xffd7e3ff),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/tips/bodyscan.png',
                      width: 29.0,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Body Scan Meditation',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 11.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1d1b20),
                              height: 1.333,
                              letterSpacing: 0.50,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text('Perform a body scan meditation, where you bring attention to each part of your body, observing any physical sensations or emotions that arise.',
                            softWrap: true,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff49454f),
                              height: 1.6,
                              letterSpacing: 0.40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Text('Improve Emotional Communication',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: 1.429,
                  letterSpacing: 0.10,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(' -  Active listening',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff49454f),
                      height: 1.333,
                      letterSpacing: 0.40,
                    ),
                  ),
                  Text(' -  Asking open-ended questions',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff49454f),
                      height: 1.333,
                      letterSpacing: 0.40,
                    ),
                  ),
                  Text(' -  Seeking support from mental health professionals',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff49454f),
                      height: 1.333,
                      letterSpacing: 0.40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 185.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff4088f0),
                      ),
                      onPressed: () {
                        // Navigate to Emotion Card page
                      },
                      child: const Text('Continue',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 0.10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
