import 'package:flutter/material.dart';

import 'package:actemo_flutter/data/contents.dart';

class EmotionCard extends StatelessWidget {
  int? idx;

  EmotionCard({this.idx, super.key});

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
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              color: const Color(0xffcee5ff),
              borderRadius: BorderRadius.circular(11.58),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // emotion name & close button
                Padding(
                  padding: const EdgeInsets.only(left: 15.14, right: 15.14, top: 11.58),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(EmotionTitle[idx!],
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xff001b3e),
                          fontSize: 27.01,
                          fontWeight: FontWeight.w400,
                          height: 1.286,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 23.06,
                ),
                // emotion image
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset('${EmotionPath[idx!]}',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(
                  height: 18.21,
                ),
                // definition & situation
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Definition',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17.14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff001d33),
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      Text(EmotionDefinition[idx!],
                        softWrap: true,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12.86,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00210f),
                          height: 1.333,
                          letterSpacing: 0.43,
                        ),
                      ),
                      const SizedBox(
                        height: 12.86,
                      ),
                      const Text('Situation',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 17.14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff001d33),
                          height: 1.5,
                          letterSpacing: 0.54,
                        ),
                      ),
                      Text(EmotionSituation[idx!],
                        softWrap: true,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12.86,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00210f),
                          height: 1.333,
                          letterSpacing: 0.43,
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
    );
  }
}
