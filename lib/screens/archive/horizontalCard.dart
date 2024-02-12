import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/screens/archive/detail.dart';

Container HorizontalCard(context, index){
  return Container(
    height: 70,
    width: 240,
    margin: const EdgeInsets.only(bottom: 15),
    decoration: BoxDecoration(
      color: Color(0xFFCEE5FF),
      //borderRadius: BorderRadius.circular(12),
    ),
    child: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 10, top: 7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${EmotionTitle[index]}',
                    style: TextStyle(
                      color: Color(0xFF001B3E),
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w800,),),
                  SizedBox(height: 3,),
                  SizedBox(
                      width: 250,
                      child: Text('${EmotionDefinition[index]}',
                        style: TextStyle(
                          color: Color(0xFF001B3E),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,),
                        overflow: TextOverflow.ellipsis,)),
                ],),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(EmotionSaved[index] == false ? Icons.check_box_outline_blank: Icons.check_box)
              ), // 체크박스 들어가는 영역
            ],
          ),),
        SizedBox(
            width: MediaQuery.of(context).size.width*0.9,
            height: 70,
            child:TextButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      //return Container();
                      return Detail(index: index);
                    }))
              },
              child: Text(' ', ),
            )
        ),],
    ),
  );
}