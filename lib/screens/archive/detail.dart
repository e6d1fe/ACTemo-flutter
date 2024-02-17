import 'package:flutter/material.dart';

import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/screens/practice/listen.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height*0.90,
            width: MediaQuery.of(context).size.width*0.85,
            margin: const EdgeInsets.all(10),
            //padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFCEE5FF),
              borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 3,),
                    SizedBox(
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  ${EmotionTitle[index]}',
                            style: const TextStyle(
                              color: Color(0xFF001B3E),
                              fontSize: 25,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w800,),
                          ),
                          IconButton(
                            onPressed: (){Navigator.pop(context);},
                            icon: const Icon(Icons.close)
                          ),
                        ]
                      )
                    ),
                    const SizedBox(height: 2),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      height: MediaQuery.of(context).size.width*0.55,
                      width: MediaQuery.of(context).size.width,
                      child:Image.asset(EmotionPath[index],
                        fit: BoxFit.fitWidth)
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Definition', textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.7,
                            child: Flexible(
                              child: Text(EmotionDefinition[index],
                                style: const TextStyle(
                                  color: Color(0xFF001B3E),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            )
                          ),
                          const SizedBox(height: 20,),
                          const Text('Situation', textAlign: TextAlign.left, style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,),),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.7,
                            child: Flexible(
                              child: Text(EmotionSituation[index],
                                style: const TextStyle(
                                  color: Color(0xFF001B3E),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 45),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF30628C)
                    ),
                    child: TextButton(onPressed: () => {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Listen(index: index))),
                      },
                      child: const Text(
                        'Practice',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        )
                      )
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}