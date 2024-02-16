import 'package:actemo_flutter/data/contents.dart';
import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/script.dart';

class chat extends StatelessWidget {
  const chat({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Script[index].length,
        itemBuilder: (context, chatIndex) {
          String name = Script[index][chatIndex]['name']!;
          String message = Script[index][chatIndex]['message']!;

          // Determine the alignment based on the person
          CrossAxisAlignment alignment = chatIndex.isEven ? CrossAxisAlignment.start : CrossAxisAlignment.end;

          return Align(
            alignment: chatIndex.isEven ? Alignment.centerLeft : Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: alignment,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Color(0xFF44474E),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                      letterSpacing: 0.50,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: chatIndex.isEven ? Color(0xFFE7E8EE) : Color(0xFFB0F1C3),
                      borderRadius: chatIndex.isEven ?
                        BorderRadius.only(
                          topRight: Radius.circular(26.46),
                          bottomLeft: Radius.circular(26.46),
                          bottomRight: Radius.circular(26.46),
                        ) :
                        BorderRadius.only(
                          topLeft: Radius.circular(26.46),
                          bottomLeft: Radius.circular(26.46),
                          bottomRight: Radius.circular(26.46),
                        ),
                    ),
                    child: Flexible(
                      child: Text(
                        message,
                        style: TextStyle(
                          color: Color(0xFF001B3E),
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          //height: 0.11,
                          //letterSpacing: 0.40,
                        ),
                        textAlign: chatIndex.isEven ? TextAlign.left : TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
