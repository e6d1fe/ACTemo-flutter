import 'package:actemo_flutter/data/contents.dart';
import 'package:flutter/material.dart';
import 'package:actemo_flutter/screens/start.dart';

class emotionCard extends StatefulWidget {
  const emotionCard({super.key, required this.index});

  final int index;

  @override
  State<emotionCard> createState() => _emotionCardState(index: index);
}

class _emotionCardState extends State<emotionCard> {
  final int index;
  _emotionCardState({required this.index})

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text.rich(
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
                        fontSize: 29.79,
                        fontFamily: 'Google Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ]
                )
              ),
              SizedBox(height: 40,),
              Container(
                height: MediaQuery.of(context).size.height*0.45,
                width: MediaQuery.of(context).size.width*0.55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF4088F0)
                ),
                child: Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Image(image: ${EmotionEmoji[index]},),
                      Text(
                        '${EmotionTitle[index]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Please cherish and remember \nhow you felt today',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                  letterSpacing: 0.50,
                ),
              ),

              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 185,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFD7E3FF)
                ),
                child: TextButton(onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Start())),
                  },
                  child: Text(
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
        )
      )
    );
  }
}
