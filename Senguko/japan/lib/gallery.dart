import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}


class _GalleryState extends State<Gallery> {
  int activeIndex = 0;
  final AssetImages = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
    'assets/images/15.jpg',
    'assets/images/16.jpg',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title : Text ('Gallery',
        style:TextStyle(
          fontSize: 20.0,
          color: Colors.yellow,
          fontFamily: 'Source4',
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      elevation: 0.0,
    ),
    body: Container(
          decoration:  BoxDecoration(
              color: Color.fromRGBO(117, 11, 15, 1)
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ CarouselSlider.builder(
          options: CarouselOptions(
              height: 400,
              autoPlay: true,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              //reverse: true,
              //viewportFraction: 1,
              autoPlayInterval: Duration(seconds: 2),
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index),
          ),
          itemCount: AssetImages.length,
          itemBuilder: (context, index, realIndex){
            final AssetImage = AssetImages[index];

            return buildImage(AssetImage,index);
          },
        ),
          const SizedBox(height: 32),
          buildIndicator(),
        ]
      ),
    ),
  );
  Widget buildImage(String AssetImage, int index) => Container (
    margin: EdgeInsets.symmetric(horizontal: 12),
    color:Colors.grey,
    child: Image.asset(
      AssetImage,
      fit: BoxFit.cover,
    ),
  );
  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: AssetImages.length,
    effect: JumpingDotEffect(
      dotColor: Colors.yellow,
      dotHeight: 15,
      dotWidth: 15,
      activeDotColor: Colors.black,
    ),
    );
  }


