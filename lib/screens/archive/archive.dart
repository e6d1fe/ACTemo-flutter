import 'package:flutter/material.dart';
import 'package:actemo_flutter/data/contents.dart';
import 'package:actemo_flutter/screens/archive/horizontalCard.dart';

class Archive extends StatefulWidget {
  const Archive({super.key});

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {

  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffededf4),
          title: const Text('Archive',
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
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCategoryButton('Unpleasant'),
                    buildCategoryButton('Activation'),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCategoryButton('Deactivation'),
                    buildCategoryButton('Pleasant'),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(thickness: 1, height: 1, color: Color(0xffCAC4D0),),
                SizedBox(height: 20,),
                Text('Emotion List',
                  style: TextStyle(
                    fontSize: 20, fontFamily: 'Roboto', fontWeight: FontWeight.w800, letterSpacing: 0.15,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 15,),
                Container(
                  height: 330,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: EmotionList.length,
                    itemBuilder: (context, index) {
                      if (selectedCategory == 'All' ||
                        EmotionCategory[index] == selectedCategory) {
                        return HorizontalCard(context, index);
                        //return Container();
                      } else {
                        return Container();
                      }
                    }
                  ),
                )
              ],
            )
          ),
        )
      )
    );
  }

  void changeCategory(String category){
    setState((){
      selectedCategory = category;
    });
  }

  Widget buildCategoryButton(String category){
    return OutlinedButton(
      onPressed: () => changeCategory(category),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Angular shape
          ),),
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: Colors.grey), // Border color
        ),
        backgroundColor: MaterialStateProperty.all(selectedCategory == category ? Colors.grey : null)),
    child: Container(
      width: MediaQuery.of(context).size.width*0.3,
      child: Column(
        children: [
          SizedBox(height: 10,),
          Text(category, style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 50,),
              SizedBox(
                width: 50,
                child: Image.asset('assets/category/${category}.png')),
            ],
          ),
          SizedBox(height: 10,),
        ],
      )),
    );
  }
}