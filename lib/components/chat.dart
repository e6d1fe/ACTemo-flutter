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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: alignment,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Color(0xff44474e),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0.11,
                      letterSpacing: 0.50,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: chatIndex.isEven ? const Color(0xffe7e8ee) : const Color(0xffb0f1c3),
                      borderRadius: chatIndex.isEven ?
                      const BorderRadius.only(
                        topRight: Radius.circular(26.46),
                        bottomLeft: Radius.circular(26.46),
                        bottomRight: Radius.circular(26.46),
                      ) :
                      const BorderRadius.only(
                        topLeft: Radius.circular(26.46),
                        bottomLeft: Radius.circular(26.46),
                        bottomRight: Radius.circular(26.46),
                      ),
                    ),
                    child: Flexible(
                      child: Text(
                        message,
                        style: const TextStyle(
                          color: Color(0xff001b3e),
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}