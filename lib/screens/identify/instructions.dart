import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:actemo_flutter/screens/identify/summary.dart';

class Instructions extends StatefulWidget {
  const Instructions({super.key});

  @override
  State<Instructions> createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.warning,
              size: 33.52,
              color: Color(0xff4285f4),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              'Before self evaluation',
              style: GoogleFonts.roboto(
                fontSize: 24.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                height: 1.333,
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'After reading and checking the instructions,\nyou can start the evaluation.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff828282),
                height: 1.429,
              ),
            ),
            const SizedBox(
              height: 27.0,
            ),
            // first card
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.08,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                borderRadius: BorderRadius.circular(16.25),
              ),
              child: SizedBox(
                width: 360.0,
                height: 230.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        softWrap: true,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const [
                            TextSpan(
                              text:
                                  'This emotional recognition is based on your answer to the questions, and ',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                letterSpacing: 0.25,
                                height: 1.429,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            TextSpan(
                              text: 'you must answer each question accurately.',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                letterSpacing: 0.25,
                                height: 1.429,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'The criteria for determining the answer to a question are subjective and may vary depending on the timing of the evaluation.',
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 0.25,
                          height: 1.429,
                        ),
                      ),
                      RichText(
                        softWrap: true,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const [
                            TextSpan(
                              text:
                                  'Even if you find it difficult to answer the questions, ',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                letterSpacing: 0.25,
                                height: 1.429,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            TextSpan(
                              text: 'please try your best to answer them.',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                letterSpacing: 0.25,
                                height: 1.429,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 27.0,
            ),
            // second card
            Card(
              margin: EdgeInsets.zero,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.08,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                borderRadius: BorderRadius.circular(16.25),
              ),
              child: SizedBox(
                width: 360.0,
                height: 120.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "The results and recommendations of this assessment are based on medical knowledge and the developer's clinical experience, but do not replace the physician's care.",
                        softWrap: true,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12.0,
                          color: Colors.black,
                          height: 1.333,
                          letterSpacing: 0.4,
                        ),
                      ),
                      // yes, continue button
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isChecked
                              ? const Color(0xff4285f4)
                              : Colors.white,
                          elevation: 0,
                          minimumSize: const Size(330, 35),
                          maximumSize: const Size(330, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: const BorderSide(
                            width: 0.7,
                            color: Color(0xff4285f4),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle,
                              size: 16.0,
                              color: isChecked
                                  ? Colors.white
                                  : const Color(0xff4285f4),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'Yes, continue',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 10.0,
                                color: isChecked
                                    ? Colors.white
                                    : const Color(0xff4285f4),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 27.0,
            ),
            // start button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4285f4),
                  elevation: 0,
                  minimumSize: const Size(298, 48),
                  maximumSize: const Size(298, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.25),
                  )),
              onPressed: () {
                // debugPrint('pressed start button');
                if (isChecked) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Summary()));
                } else {
                  //
                }
              },
              child: const Text(
                'START',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.17,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.429,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
