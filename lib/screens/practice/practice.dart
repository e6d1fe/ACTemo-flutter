import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/data/script.dart';
import 'package:actemo_flutter/screens/practice/chat.dart';

class practice extends StatefulWidget {
  const practice({super.key, required this.index});

  final int index;

  @override
  State<practice> createState() => _practiceState(index: index);
}

class _practiceState extends State<practice> {
  final int index;
  _practiceState({required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffededf4),
          title: const Text('practice',
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
            onPressed: (){Navigator.pop(context);},
            icon: const Icon(Icons.chevron_left,
              size: 24.0,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 10,),
                decoration: BoxDecoration(
                  color: Color(0xFF94D5A8),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        '${EmotionTitle[index]}',
                        style: TextStyle(
                          color: Color(0xFF001B3E),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      child: Flexible(
                        child: Text(
                          '${Scene[index]}',
                          style: TextStyle(
                            color: Color(0xFF001B3E),
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Listen to the acting of AI voice actor',
                style: TextStyle(
                  color: Color(0xFF191C20),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
                textAlign: TextAlign.left,
              ),
              // Container

              // 상황 음성 파일


              // 상황 대본 chat
              SizedBox(height: 15,),
              Text('Script',
                style: TextStyle(
                  color: Color(0xFF191C20),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
                textAlign: TextAlign.start,
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                child: chat(index: index),
              ),

              // 상황 녹음

            ],
          ),
        ),
      )
    );
  }
}
