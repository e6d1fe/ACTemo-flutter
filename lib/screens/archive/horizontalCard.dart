import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return ChangeNotifierProvider(
      create: (context) => SaveEmotion(EmotionIndex: index),
      child: Consumer<SaveEmotion>(
        builder: (context, saveEmotion, child) {
          return Container(
            height: 80,
            width: 240,
            margin: const EdgeInsets.only(bottom: 15),
            //padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFD7E3FF),
              //borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${EmotionTitle[index]}',
                            style: TextStyle(
                              color: Color(0xFF001B3E),
                              fontSize: 20,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.48,
                            ),
                          ),
                          SizedBox(
                            width: 240,
                            child: Text('${EmotionDefinition[index]}',
                              style: TextStyle(
                                color: Color(0xFF001B3E),
                                fontSize: 16,
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
                        margin: EdgeInsets.only(right: 10),
                        child: Consumer<SaveEmotion>(
                          builder: (context, saveEmotion, child) {
                            return Checkbox(
                              value: EmotionSaved[index],
                              onChanged: null,
                              activeColor: Color(0xff4088F0),// Disable checkbox interaction
                            );
                          },
                        )
                        //child: Icon(EmotionSaved[index] == false ? Icons.check_box_outline_blank: Icons.check_box)
                      ), // 체크박스 들어가는 영역
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
                        })
                      )
                    },
                    child: Text(' ',),
                  )
                ),
              ],
            ),
          );
        }
      )
    );
  }
}


class DisplayScreen extends StatelessWidget {
  final SaveEmotion saveEmotion;

  DisplayScreen({required this.saveEmotion});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Emotion ${saveEmotion.EmotionIndex}'),
          Checkbox(
            value: saveEmotion.isSaved,
            onChanged: null, // Disable checkbox interaction
          ),
        ],
      ),
    );
  }
}

class CheckboxPage extends StatelessWidget {
  final List<SaveEmotion> saveEmotionList;

  CheckboxPage({required this.saveEmotionList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(saveEmotionList.length, (index) {
            return DisplayScreen(saveEmotion: saveEmotionList[index]);
          }),
        ),
      ),
    );
  }
}