import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/start.dart';

class Walkthrough3 extends StatelessWidget {
  const Walkthrough3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 93.47,
              left: 46.0,
              child: Image.asset('assets/objects/object3.png',
                width: 69.60,
              ),
            ),
            Positioned(
              top: 210.5,
              left: 46.0,
              child: Image.asset('assets/objects/walkthrough_text3.png',
                width: 276.0,
              ),
            ),
            Positioned(
              bottom: 182.79,
              right: 55.25,
              child: Image.asset('assets/objects/object4.png',
                width: 152.70,
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Start()));
                  },
                  child: const Text('Get Started',
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
