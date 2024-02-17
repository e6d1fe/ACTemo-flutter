import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:actemo_flutter/components/navbar.dart';
import 'package:flip_card/flip_card.dart';

class emotionCard extends StatefulWidget {
  const emotionCard({super.key, required this.index});

  final int index;

  @override
  State<emotionCard> createState() => _emotionCardState(index: index);
}

class _emotionCardState extends State<emotionCard> {
  final int index;
  _emotionCardState({required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: const Color(0xffededf4),
          title: const Text('ACTion',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF2C6A46),
              fontSize: 16,
              fontFamily: 'Google Sans',
              fontWeight: FontWeight.w700,
              height: 0.09,
              letterSpacing: 0.15,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: (){Navigator.pop(context);},
            icon: const Icon(Icons.chevron_left,
              size: 24.0,
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ACT',
                        style: TextStyle(
                          color: Color(0xFF4088F0),
                          fontSize: 30,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'oday',
                        style: TextStyle(
                          color: Color(0xFFAEDCBA),
                          fontSize: 30,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 30,),
                FlipCard(
                  fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  side: CardSide.FRONT, // The side to initially display.
                  front: Container(
                    height: MediaQuery.of(context).size.height*0.38,
                    width: MediaQuery.of(context).size.width*0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF4088F0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 0,
                          blurRadius: 5.0,
                          offset: const Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 45,),
                              Text(
                                EmotionEmoji[index],
                                style: const TextStyle(fontSize: 100),
                              ),
                              const SizedBox(height: 45,),
                              Text(
                                EmotionTitle[index],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0.07,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Center(child: Icon(Icons.autorenew, color: Color(0xFFD9D9D9),))
                          )
                        ],
                      ),
                    ),
                  ),
                  back: Container(
                    padding: const EdgeInsets.fromLTRB(20, 35, 10, 10),
                    height: MediaQuery.of(context).size.height*0.38,
                    width: MediaQuery.of(context).size.width*0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFAEDCBA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 0,
                          blurRadius: 4.0,
                          offset: const Offset(0, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(EmotionTitle[index],
                                  style: const TextStyle(
                                    color: Color(0xFF001B3E),
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 3,),
                                const Text('Definition', textAlign: TextAlign.left, style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,),),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    child: Flexible(
                                        child: Text(EmotionDefinition[index],
                                          style: const TextStyle(
                                            color: Color(0xFF001B3E),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                    )
                                ),
                                const SizedBox(height: 8,),
                                const Text('Situation', textAlign: TextAlign.left, style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,),),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width*0.9,
                                    child: Flexible(
                                        child: Text(EmotionSituation[index],
                                          style: const TextStyle(
                                            color: Color(0xFF001B3E),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                    )
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const Center(child: Icon(Icons.autorenew, color: Color(0xFF001B3E),)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const Flexible(
                  child: Text(
                    'Please cherish and remember \nhow you felt today',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.50,
                    ),
                  ),
                ),

                const SizedBox(height: 40,),
                Container(
                  height: 50,
                  width: 185,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFD7E3FF)
                  ),
                  child: TextButton(onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MainScreen())),
                    },
                    child: const Text(
                      'Go Back To Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF001B3E),
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 0.10,
                        letterSpacing: 0.10,
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavBar(),
      )
    );
  }
}


