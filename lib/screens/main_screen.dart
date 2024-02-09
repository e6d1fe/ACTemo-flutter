import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:actemo_flutter/screens/settings.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: 110.0,
          child: Image.asset('assets/logos/actemo_logo_start.png',),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: const Icon(
                  Icons.settings,
                  size: 36.0,
                  color: Color(0xff74777f)
              ),
              onPressed: () {
                debugPrint('settings button was pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.zero,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Color(0xffc4c6d0),
                  ),
                  borderRadius: BorderRadius.circular(16.25),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 188.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 137.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/logos/actemo_logo_mic.png',
                                width: 23.7,
                              ),
                              Text('Identify and express your emotion with',
                                style: GoogleFonts.roboto(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                ),
                              ),
                              Image.asset('assets/logos/actemo_logo_letter.png',
                                width: 98.0,
                              ),
                              Text('By recognizing current valence and arousal degree, you can identify the emotions you might be currently feeling.',
                                softWrap: true,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff44474e),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // start button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                              minimumSize: const Size(116.8, 31.2),
                              maximumSize: const Size(116.8, 31.2),
                              backgroundColor: const Color(0xff4088f0),
                              shadowColor: Colors.transparent
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Start now',
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(Icons.arrow_forward,
                                size: 18.0,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      debugPrint('Identify card was tapped');
                    },
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xffc4c6d0),
                        ),
                        borderRadius: BorderRadius.circular(16.25),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 175.5,
                          height: 92.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.find_in_page,
                                size: 39.0,
                                color: Color(0xff4088f0),
                              ),
                              Text('Identify',
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('practice card was tapped');
                    },
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xffc4c6d0),
                        ),
                        borderRadius: BorderRadius.circular(16.25),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 175.5,
                          height: 92.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.local_movies,
                                size: 39.0,
                                color: Color(0xffaedcba),
                              ),
                              Text('Practice',
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  debugPrint('archive card tapped');
                },
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xffc4c6d0),
                    ),
                    borderRadius: BorderRadius.circular(16.25),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 64.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.25, 13, 16.25, 13),
                      child: Row(
                        children: [
                          const Icon(Icons.attach_file,
                            size: 26.0,
                          ),
                          const SizedBox(
                            width: 16.25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Archive',
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                  height: 1.429,
                                ),
                              ),
                              Text('Access your past activities and progress',
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001d33),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Dictionary()));
                },
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xffc4c6d0),
                    ),
                    borderRadius: BorderRadius.circular(16.25),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 78.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.25, 13, 16.25, 13),
                      child: Row(
                        children: [
                          const Icon(Icons.menu_book,
                            size: 26.0,
                          ),
                          const SizedBox(
                            width: 16.25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Emotion Dictionary',
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                  height: 1.429,
                                ),
                              ),
                              Text('Learn about various emotions and their \nexpressions',
                                softWrap: true,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001d33),
                                  height: 1.333,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  debugPrint('help call card tapped');
                },
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color(0xffc4c6d0),
                    ),
                    borderRadius: BorderRadius.circular(16.25),
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 78.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.25, 13, 16.25, 13),
                      child: Row(
                        children: [
                          const Icon(Icons.phone,
                            size: 26.0,
                          ),
                          const SizedBox(
                            width: 16.25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Help Call',
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001b3e),
                                  height: 1.429,
                                ),
                              ),
                              Text('Learn about various emotions and their \nexpressions',
                                softWrap: true,
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff001d33),
                                  height: 1.333,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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
}
