

import 'package:carousel_slider/carousel_slider.dart';
import 'package:cvmaker/Screens/add_data.dart';
import 'package:cvmaker/Utils/data.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            height: 100,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: carouselItems,
        ),
      ),
      DotsIndicator(
        dotsCount: carouselItems.length,
        position: currentIndex,
        decorator: const DotsDecorator(
          activeColor: Color.fromRGBO(69, 160, 54, 100),
          color: Colors.grey,
        ),
      ),
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(320, 50) ,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          )
          
        ),
        onPressed: (){

          Get.to(AddDataScreen());
        }, icon: Icon(Icons.add,color: Colors.white,), label: Text('Create new Resume',style: TextStyle(color: Colors.white),))
    ]);
  }
}
