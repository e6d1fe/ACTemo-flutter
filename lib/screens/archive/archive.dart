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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffededf4),
        title: const Text('Archive',
          style: TextStyle(
            fontFamily: 'Google Sans',
            fontWeight: FontWeight.w700,
            height: 0.09,
            letterSpacing: 0.15,
            fontSize: 16.0,
            color: Color(0xFF00210F)
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: const Icon(Icons.chevron_left, size: 24.0,),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCategoryButton('Deactivation'),
                  buildCategoryButton('Pleasant'),
                ],
              ),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 1, color: Color(0xffCAC4D0),),
              const SizedBox(height: 40,),
              const Text('Emotion List',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.15,
                  height: 0.09
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 25,),
              SizedBox(
                height: 330,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  itemCount: EmotionList.length,
                  itemBuilder: (context, index) {
                    if (selectedCategory == 'All' ||
                      EmotionCategory[index] == selectedCategory) {
                      return HorizontalCard(index: index);
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
          ),
        ),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(color: Color(0xFFDDDFE5)
          ), // Border color
        ),
      backgroundColor: MaterialStateProperty.all(selectedCategory == category ? const Color(0xFFE2E2E9) : const Color(0xFFF3F3FA))),
      child: SizedBox(
        width: MediaQuery.of(context).size.width*0.3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Text(category,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 50,),
                SizedBox(
                  width: 50,
                  child: Image.asset('assets/category/$category.png')
                ),
              ],
            ),
            const SizedBox(height: 10,),
          ],
        )
      ),
    );
  }
}