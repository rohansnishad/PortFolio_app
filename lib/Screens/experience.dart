import 'package:flutter/material.dart';



class experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiences'),
        ),
        body: MultipleContainers(),
      ),
    );
  }
}

class MultipleContainers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        ContainerWithImageAndText(
          image: 'assets/images/pngwing.com (3).png', // Replace with your image URL
          title: 'Project 1',
          description: 'Fluyyer is an innovative and user-friendly mobile application designed to revolutionize how people create and share beautiful, interactive digital flyers. \nWith Fluyyer, users can effortlessly craft stunning\n promotional materials, event invitations, announcements, and more, all within a few taps.1.\nIt spans multiple lines.',
        ),
        SizedBox(height: 20),
        ContainerWithImageAndText(
          image: 'assets/images/and_std.png', // Replace with your image URL
          title: 'Project 2',
          description: 'Fluyyer is an innovative and user-friendly mobile application designed to revolutionize how people create and share beautiful, interactive digital flyers. \nWith Fluyyer, users can effortlessly craft stunning\n promotional materials, event invitations, announcements, and more, all within a few taps.1.\nIt spans multiple lines.',
        ),
        SizedBox(height: 20),
        ContainerWithImageAndText(
          image: 'assets/images/pngwing.com (4).png', // Replace with your image URL
          title: 'Project 3',
          description: 'Fluyyer is an innovative and user-friendly mobile application designed to revolutionize how people create and share beautiful, interactive digital flyers. \nWith Fluyyer, users can effortlessly craft stunning\n promotional materials, event invitations, announcements, and more, all within a few taps.1.\nIt spans multiple lines.',
        ),
        SizedBox(height: 20),
        ContainerWithImageAndText(
          image: 'assets/images/dart.png', // Replace with your image URL
          title: 'Project 4',
          description: 'Fluyyer is an innovative and user-friendly mobile application designed to revolutionize how people create and share beautiful, interactive digital flyers. \nWith Fluyyer, users can effortlessly craft stunning\n promotional materials, event invitations, announcements, and more, all within a few taps.1.\nIt spans multiple lines.',
        ),
      ],
    );
  }
}

class ContainerWithImageAndText extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  ContainerWithImageAndText({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
