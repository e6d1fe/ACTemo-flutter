import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/data/script.dart';
import 'package:actemo_flutter/screens/practice/chat.dart';

class Listen extends StatefulWidget {
  const Listen({super.key, required this.index});

  final int index;

  @override
  State<Listen> createState() => _ListenState(index: index);
}

class _ListenState extends State<Listen> {
  final int index;
  _ListenState({required this.index});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 10,),
                decoration: BoxDecoration(
                  color: const Color(0xFF94D5A8),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        EmotionTitle[index],
                        style: const TextStyle(
                          color: Color(0xFF001B3E),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 60,
                      child: Flexible(
                        child: Text(
                          Scene[index],
                          style: const TextStyle(
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

              // 상황 대본 chat
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9FF)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Script',
                      style: TextStyle(
                        color: Color(0xFF191C20),
                        fontSize: 16,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.10,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.3,
                      child: chat(index: index),
                    ),
                  ],
                ),
              ),

              // AI 대본

              const Text('Listen to the acting of AI voice actor',
                style: TextStyle(
                  color: Color(0xFF191C20),
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.10,
                ),
                textAlign: TextAlign.center,
              ),


              // 페이지 이동

              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0,0,20,20),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF2C6A46)
                  ),
                  child: TextButton(onPressed: () => {
                    //Navigator.push(context,
                        //MaterialPageRoute(builder: (context) => act(index: index))),
                  },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                          )
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.navigate_next, color: Colors.white,)
                      ],
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
