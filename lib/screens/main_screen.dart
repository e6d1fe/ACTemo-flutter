import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

import 'package:actemo_flutter/screens/identify/instructions.dart';

import 'package:actemo_flutter/components/navbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat('h:mm').format(now);
  }

  String getSystemDate() {
    var now = DateTime.now();
    String weekday = DateFormat.MMMMEEEEd().format(now).split(' ')[0].substring(0, 3);
    String month = DateFormat.MMMMEEEEd().format(now).split(' ')[1].substring(0, 3);
    String day = DateFormat.MMMMEEEEd().format(now).split(' ')[2];

    return '$weekday, $month $day';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // logo
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80.08,
              padding: const EdgeInsets.only(top: 6.04, left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/logos/actemo_logo_letter.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // time & date
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                children: [
                  const Text('For Your Emotional Life',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      height: 1.5,
                      letterSpacing: 0.15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TimerBuilder.periodic(
                        const Duration(minutes: 1),
                        builder: (context) {
                          return Text(getSystemTime(),
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 36.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff191c1b),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      TimerBuilder.periodic(
                        const Duration(days: 1),
                        builder: (context) {
                          return Text(getSystemDate(),
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff191c1b),
                              letterSpacing: 0.25,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
            // cards
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 160.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xffd7e3ff),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Identify your\nemotion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.787,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff284777),
                          height: 1.333,
                          letterSpacing: 0.62,
                        ),
                      ),
                      SizedBox(
                        height: 12.32,
                      ),
                      Text('Valence and Arousal\nDaily Check',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 9.10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff001b3e),
                          height: 1.457,
                          letterSpacing: 0.41,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(Icons.find_in_page,
                        size: 58.4,
                        color: Color(0xff4088f0),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160.0,
                  height: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xffb0f1c3),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Practice your\nemotion',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.787,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00210f),
                          height: 1.333,
                          letterSpacing: 0.62,
                        ),
                      ),
                      SizedBox(
                        height: 12.32,
                      ),
                      Text('By AI Based Script\nActing Practice',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 9.10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff00210f),
                          height: 1.457,
                          letterSpacing: 0.41,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Icon(Icons.local_movies,
                        size: 58.4,
                        color: Color(0xff2c6a46),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 54.0,
            ),
            // start now button
            SizedBox(
              width: 157.0,
              height: 40.18,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xff4088f0),
                  side: const BorderSide(
                    color: Colors.transparent,
                  )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Instructions()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Start now',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 17.68,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 0.126,
                      ),
                    ),
                    SizedBox(
                      width: 3.0,
                    ),
                    Icon(Icons.arrow_forward,
                      color: Colors.white,
                      size: 22.69,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
