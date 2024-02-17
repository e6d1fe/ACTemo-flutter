import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/identify/instructions.dart';

import 'package:actemo_flutter/components/navbar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // logo
              Image.asset('assets/main_screen_text.png',
                width: 218.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/logos/actemo_logo_letter.png',
                width: 192.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.all(35.0),
                child: Divider(),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
