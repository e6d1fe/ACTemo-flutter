import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:actemo_flutter/components/statusbar.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  String userInput = '';

  final _formKey = GlobalKey<FormState>();

  late ScrollController scrollController;

  final gemini = Gemini.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      StatusBar(isDone: false),
                      SizedBox(
                        width: 3.0,
                      ),
                      StatusBar(isDone: false),
                    ],
                  ),
                  const SizedBox(
                    height: 17.0,
                  ),
                  // Step 1
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text('Step 1',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff74777f),
                        height: 1.5,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  // Valence Diary
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_reaction_outlined,
                          size: 24.0,
                          color: Color(0xff4088f0),
                        ),
                        SizedBox(
                          width: 8.93,
                        ),
                        Text('Valence Diary',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: 1.333,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25.57,
                  ),
                  // Write a short summary of your day
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text('Write a short summary of your day',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff001e2f),
                        height: 1.333,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.14,
                  ),
                  // diary input field
                  Form(
                    key: _formKey,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 11,
                      onTap: () {
                        scrollAnimate();
                      },
                      onChanged: (value) {
                        userInput = value;
                      },
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xfff9f9ff),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffc4c6d0),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffc4c6d0),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 48.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff4285f4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.25),
                        ),
                      ),
                      onPressed: () {
                        debugPrint(userInput);
                        gemini.text("'$userInput' If the input sentence above is positive, say 'positive', and if it's negative, say 'negative'.")
                            .then((value) => print( value?.output )) /// or value?.content?.parts?.last.text
                            .catchError((e) => print(e));
                      },
                      child: const Text('Done',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 0.1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void scrollAnimate() {
    Future.delayed(const Duration(milliseconds: 600), () {
      scrollController.animateTo(MediaQuery.of(context).viewInsets.bottom,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
      );
    });
  }
}
