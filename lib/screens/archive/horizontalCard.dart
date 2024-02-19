import 'package:flutter/material.dart';

import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/screens/archive/detail.dart';

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({super.key, required this.index});

  final int index;

  @override
  State<HorizontalCard> createState() => _HorizontalCardState(index: index);
}

class _HorizontalCardState extends State<HorizontalCard> {
  final int index;
  _HorizontalCardState({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 240,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(
        color: Color(0xFFD7E3FF),
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(EmotionTitle[index],
                      style: const TextStyle(
                        color: Color(0xFF001B3E),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.48,
                      ),
                    ),
                    SizedBox(
                      width: 240,
                      child: Text(EmotionDefinition[index],
                        style: const TextStyle(
                          color: Color(0xFF001B3E),
                          fontSize: 14.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.24
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Checkbox(
                    value: EmotionSaved[index],
                    onChanged: null,
                    activeColor: const Color(0xff4088F0),// Disable checkbox interaction
                  )
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 70,
            child: TextButton(
              onPressed: () => {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    //return Container();
                    return Detail(index: index);
                  }
                ))
              },
              child: const Text(' ',),
            )
          ),
        ],
      ),
    );
  }
}
