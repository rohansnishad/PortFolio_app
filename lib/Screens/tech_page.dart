import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';



class technologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          title: Text('Technologies I work with',style: TextStyle(color: Colors.black),textAlign: TextAlign.center),
        ),

        body: HorizontalScrollWithBoxes(),
      ),
    );
  }
}

class HorizontalScrollWithBoxes extends StatelessWidget {
  final List<String> boxAssetImages = [
    'assets/images/and_std.png',
    'assets/images/pngwing.com (2).png',
    'assets/images/pngwing.com (3).png',
    'assets/images/pngwing.com (4).png',
    'assets/images/dart.png',
    'assets/images/github1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 170, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: boxAssetImages.length,
        itemBuilder: (context, index) {
          return Container(
            width: 170, // Adjust the width of each box as needed
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  boxAssetImages[index],
                  height: 100,
                  width: 100,
                ),
                SizedBox(height: 10),

                // Text(
                //   'Box ${index + 1}',
                //   style: TextStyle(color: Colors.black, fontSize: 18),
                // ),
              ],
            ),
          );

        },
      ),
      );


  }
}
