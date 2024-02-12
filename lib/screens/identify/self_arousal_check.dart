import 'package:actemo_flutter/utils/arousal_check_category.dart';
import 'package:flutter/material.dart';

class SelfArousalCheck extends StatefulWidget {
  SelfArousalCheck({required this.valence, super.key});

  String? valence;

  @override
  State<SelfArousalCheck> createState() => _SelfArousalCheckState();
}

class _SelfArousalCheckState extends State<SelfArousalCheck> {
  final List arousalCheckData = List.generate(arousalCheckHeader.length, (index) => ArousalCheckCategory(arousalCheckHeader[index], arousalCheckDescription[index]));

  List<bool> arousalCheckCount = [false, false, false, false, false, false, false];

  String? valence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left,
            size: 24.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Column(
            children: [
              // Step 2
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: const Text('Step 2',
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
                    // Self Arousal Check
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/self_arousal_check.png',
                            height: 18.0,
                          ),
                          const SizedBox(
                            width: 8.93,
                          ),
                          const Text('Self Arousal Check',
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
                    const Text('The questions below are the items to measure your arousal degree. Please check the applicable items.',
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
                      height: 15.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: arousalCheckData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CheckboxListTile(
                          value: arousalCheckCount[index],
                          onChanged: (value) {
                            setState(() {
                              arousalCheckCount[index] = !arousalCheckCount[index];
                            });
                          },
                          title: Text(arousalCheckData[index].header,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff191c20),
                              height: 1.429,
                              letterSpacing: 0.1,
                            ),
                          ),
                          subtitle: Text(arousalCheckData[index].description,
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff44474e),
                              height: 1.333,
                              letterSpacing: 0.4,
                            ),
                          ),
                          activeColor: const Color(0xff2c6a46),
                          contentPadding: const EdgeInsets.only(top: 10.89, bottom: 14.52, left: 14.52, right: 24.0),
                          tileColor: const Color(0xffededf4),
                        ),
                        const SizedBox(
                          height: 13.0,
                        ),
                        if (index == arousalCheckData.length - 1)
                          const SizedBox(
                            height: 46.53,
                          ),
                        if (index == arousalCheckData.length - 1)
                          SizedBox(
                            width: 300.0,
                            height: 48.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffb0f1c3),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.25),
                                ),
                                side: BorderSide(
                                  width: 1.08,
                                  color: Colors.black.withOpacity(0.10000000149011612),
                                )
                              ),
                              onPressed: () {
                                debugPrint(arousalCheckCount.toString());
                                valence = widget.valence;
                                debugPrint(valence);
                              },
                              child: const Text('Done',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff00210f),
                                  letterSpacing: 0.1,
                                ),
                              ),
                            ),
                          ),
                        if (index == arousalCheckData.length - 1)
                          const SizedBox(
                            height: 46.53,
                          ),
                      ],
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
