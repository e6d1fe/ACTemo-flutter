import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(23.52),
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
                    height: 50.0,
                  ),
                  const Text('Write a short summary of your day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: 1.454,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      // minLines: 1,
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
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4285f4),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff4285f4),
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint(userInput);
        },
        backgroundColor: const Color(0xff4285f4),
        child: const Icon(Icons.check,
          size: 16.0,
          color: Colors.white,
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
