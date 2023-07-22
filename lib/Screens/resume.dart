import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram Follow Button'),
        ),
        body: Center(
          child: InstagramFollowButton(),
        ),
      ),
    );
  }
}

class InstagramFollowButton extends StatelessWidget {
  final String instagramUrl = "https://instagram.com/ro_han_n143?igshid=MzNlNGNkZWQ4Mg=="; // Replace with the desired Instagram profile URL

  _launchInstagramProfile() async {
    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      throw 'Could not launch $instagramUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchInstagramProfile,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue, // Change the color to match Instagram's follow button color
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.person_add,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
