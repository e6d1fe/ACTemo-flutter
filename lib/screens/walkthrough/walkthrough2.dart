import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/walkthrough/walkthrough3.dart';

class Walkthrough2 extends StatelessWidget {
  const Walkthrough2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 98.0,
              left: 37.88,
              child: Image.asset('assets/objects/walkthrough_text2.png',
                width: 258.0,
              ),
            ),
            Positioned(
              top: 266.0,
              left: (MediaQuery.of(context).size.width - 334.35) / 2,
              child: Column(
                children: [
                  Container(
                    width: 334.35,
                    padding: const EdgeInsets.only(top: 10.06, bottom: 10.06, left: 13.42, right: 13.42),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.84,
                        color: const Color(0xffdddfe5),
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mental and Emotional Well-being',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12.94,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191c20),
                            height: 1.429,
                            letterSpacing: 0.09,
                          ),
                        ),
                        Text('It eases decision-making, reduces anxiety, and increases resilience.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11.09,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff44474e),
                            height: 1.333,
                            letterSpacing: 0.37,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7.38,
                  ),
                  Container(
                    width: 334.35,
                    padding: const EdgeInsets.only(top: 10.06, bottom: 10.06, left: 13.42, right: 13.42),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.84,
                          color: const Color(0xffdddfe5),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ability to connect with oneself and others',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12.94,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191c20),
                            height: 1.429,
                            letterSpacing: 0.09,
                          ),
                        ),
                        Text('Leads to healthier relationships and creates bonding moments when vulnerable emotions are expressed.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11.09,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff44474e),
                            height: 1.333,
                            letterSpacing: 0.37,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7.38,
                  ),
                  Container(
                    width: 334.35,
                    padding: const EdgeInsets.only(top: 10.06, bottom: 10.06, left: 13.42, right: 13.42),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.84,
                          color: const Color(0xffdddfe5),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Supports physical health',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12.94,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191c20),
                            height: 1.429,
                            letterSpacing: 0.09,
                          ),
                        ),
                        Text('Enables the release of negative emotions and helps in coping with stressful situations.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11.09,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff44474e),
                            height: 1.333,
                            letterSpacing: 0.37,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7.38,
                  ),
                  Container(
                    width: 334.35,
                    padding: const EdgeInsets.only(top: 10.06, bottom: 10.06, left: 13.42, right: 13.42),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.84,
                          color: const Color(0xffdddfe5),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reduces stress and increases confidence',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12.94,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff191c20),
                            height: 1.429,
                            letterSpacing: 0.09,
                          ),
                        ),
                        Text('Expressing emotions reduces stress and depressive symptoms, and increases confidence.',
                          softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 11.09,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff44474e),
                            height: 1.333,
                            letterSpacing: 0.37,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 56.0,
              left: (MediaQuery.of(context).size.width - 298.0) / 2,
              child: SizedBox(
                width: 298.0,
                height: 46.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xff4285f4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.25),
                    ),
                    side: BorderSide(
                      width: 1.083,
                      color: Colors.black.withOpacity(0.10000000149011612),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Walkthrough3()));
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
            ),
          ],
        ),
      ),
    );
  }
}
