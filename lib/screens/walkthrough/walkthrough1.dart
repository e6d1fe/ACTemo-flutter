import 'package:flutter/material.dart';

import 'package:actemo_flutter/screens/walkthrough/walkthrough2.dart';

class Walkthrough1 extends StatelessWidget {
  const Walkthrough1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset('assets/objects/object1.png',
                width: 197.66,
              ),
            ),
            Positioned(
              top: 238.1,
              left: 50.21,
              child: Image.asset('assets/logos/ACTemo.png',
                width: 163.0,
              ),
            ),
            Positioned(
              top: 299.9,
              left: 50.21,
              child: Image.asset('assets/objects/walkthrough_text1.png',
                width: 295.0,
              ),
            ),
            Positioned(
              top: 460.32,
              right: 46.0,
              child: Image.asset('assets/objects/object2.png',
                width: 106.705,
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
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Walkthrough2()));
                  },
                  child: const Text('Start your emotional journey',
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
