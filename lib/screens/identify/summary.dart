import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'package:actemo_flutter/screens/identify/self_arousal_check.dart';

import 'package:actemo_flutter/utils/gemini_prompt.dart';

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
      appBar: AppBar(
        backgroundColor: const Color(0xffededf4),
        title: const Text('Identification',
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
          onPressed: () {},
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
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
                    height: 9.58,
                  ),
                  const Text('ACTemo uses a Natural Language Processing (NLP) model to analyze the degree of valence through your description of the factual events that occurred today.',
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.333,
                      letterSpacing: 0.4,
                    ),
                  ),
                  const SizedBox(
                    height: 15.83,
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
                    height: 60.0,
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
                        gemini.text(getGeminiPrompt(userInput))
                            .then((value) => print( value?.output )) /// or value?.content?.parts?.last.text
                            .catchError((e) => print(e));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SelfArousalCheck()));
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
