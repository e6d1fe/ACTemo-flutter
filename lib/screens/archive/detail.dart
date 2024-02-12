import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/contents.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              height: MediaQuery.of(context).size.height*0.85,
              width: MediaQuery.of(context).size.width*0.85,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xFFCEE5FF),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '  ${EmotionTitle[index]}',
                              style: TextStyle(
                                color: Color(0xFF001B3E),
                                fontSize: 25,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w800,),),
                            IconButton(
                                onPressed: (){Navigator.pop(context);},
                                icon: Icon(Icons.close)),
                          ])),
                  SizedBox(height: 2),
                  Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child:Image.asset('${EmotionPath[index]}',
                          fit: BoxFit.fitWidth)),
                  SizedBox(height: 7),
                  Text('Definition', textAlign: TextAlign.left, style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Flexible(
                          child: Text('${EmotionDefinition[index]}',
                            style: TextStyle(
                              color: Color(0xFF001B3E),
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,),
                          ))),
                  SizedBox(height: 7,),
                  Text('Situation', textAlign: TextAlign.left, style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Flexible(
                          child: Text('${EmotionSituation[index]}',
                            style: TextStyle(
                              color: Color(0xFF001B3E),
                              fontSize: 13,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,),
                          ))),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF30628C)
                      ),
                      child: TextButton(onPressed: () => {
                        //Navigator.push(context,
                        //MaterialPageRoute(builder: (context){
                        //return Container();
                        //return Detail(index: index);
                        //}))
                      },
                          child: Text(
                              'Practice',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ))),
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
