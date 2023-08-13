// import 'dart:js_interop';
// import 'dart:js_util';
import 'package:flutter/cupertino.dart';
import 'package:portfolio_app/Screens/experience.dart';
import 'package:portfolio_app/Screens/github_1.dart';
import 'package:portfolio_app/Screens/tech_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:portfolio_app/Screens/resume.dart';
import 'package:url_launcher/link.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  // class InstagramFollowButton extends StatelessWidget {
  // final String instagramUrl = "https://instagram.com/ro_han_n143?igshid=MzNlNGNkZWQ4Mg=="; // Replace with the desired Instagram profile URL
  //
  // _launchInstagramProfile() async {
  // if (await canLaunch(instagramUrl)) {
  // await launch(instagramUrl);
  // } else {
  // throw 'Could not launch $instagramUrl';
  // }
  // }

  _launchInstagram() async {
    const instagramUrl = 'https://instagram.com/ro_han_n143?igshid=MzNlNGNkZWQ4Mg==';
    if (await canLaunch(instagramUrl)) {
      await launch(instagramUrl);
    } else {
      throw 'Could not launch Instagram';
    }
  }
  _launchGithub() async {
    const githubUrl = 'https://github.com/rohansnishad';
    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      throw 'Could not launch Instagram';
    }
  }
  _launchLinkedIn() async {
    const linkedInUrl = 'https://www.linkedin.com/in/rohan-nishad-4a79a5234/';
    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      throw 'Could not launch Instagram';
    }
  }
  _launchTwitter() async {
    const twitterUrl = 'https://instagram.com/ro_han_n143?igshid=MzNlNGNkZWQ4Mg==';
    if (await canLaunch(twitterUrl)) {
      await launch(twitterUrl);
    } else {
      throw 'Could not launch Instagram';
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Color.fromARGB(255, 177, 217, 232),

         body: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: 32.0),
             Align(alignment: Alignment.center),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 140,
                backgroundImage: NetworkImage(
                    'https://media.licdn.com/dms/image/D5603AQHvaKZ0qqftGQ/profile-displayphoto-shrink_800_800/0/1674959539754?e=1695859200&v=beta&t=afCfsA9mPQYtFgaepLZElqbVen1WDcWqDSrIlLEamMI'),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  'Hey,  I  am  Rohan  Nishad',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Staatliches'),
                ),
            ),

             Padding(
               padding: EdgeInsets.all(10.0),
               child: Text( textAlign: TextAlign.center,
                 ' I am Flutter Developer \n & UI/UX Designer',
                 style: TextStyle(color: Colors.grey,
                     fontSize: 20.0,
                     fontWeight: FontWeight.normal,
                     fontFamily: 'SourceSerif4'),
               ),
             ),

               SizedBox(height: 80.0),
             GestureDetector(
               onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return resume();
                   },
                 ),
               ),
               child: Container(
                 padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 120, 224, 210),
                 ),
                 child: const Text(
                   "    Resume   ",
                   style: TextStyle(
                     color: Colors.black,
                     // fontWeight: FontWeight.bold,
                     fontSize: 22,
                   ),
                 ),
               ),
             ),

             SizedBox(height: 60.0),

             Text('About Me',style: TextStyle(
                 fontSize: 30.0,
                 fontWeight: FontWeight.w300,
                 fontFamily: 'Staatliches'),),

             SizedBox(height: 10.0),

             // Text("",
             //
             //   style: TextStyle(
             //     fontSize: 15.0,
             //     fontWeight: FontWeight.w100,
             //     fontFamily: 'Cookie'),),
             Padding(padding: EdgeInsets.all(8.0),
            child :Column(children: [Align(alignment: Alignment.center,),
             Text(textAlign: TextAlign.center,
               'As a Flutter developer, I am passionate about creating elegant and efficient mobile applications that deliver exceptional user experiences. With a strong background in mobile development and a love for UI/UX design, I strive to craft visually appealing and user-friendly interfaces that captivate users from the moment they interact with the app.',
               style: TextStyle(fontSize: 28.0,fontFamily: 'Cookie'),
             ),


             Text(textAlign: TextAlign.center,
               'Having honed my skills in Dart and Flutter, I find great joy in the flexibility and power this framework offers. Flutter\'s hot reload feature allows me to iterate quickly, making development a seamless and enjoyable process. Whether I\'m building native-like mobile apps for iOS and Android or crafting beautiful UI components, I am constantly exploring new possibilities and experimenting with cutting-edge technologies to stay ahead in this rapidly evolving industry.',
               style: TextStyle(fontSize: 28.0,fontFamily: 'Cookie'),
             ),


           ],),),

             const SizedBox(height: 13.0),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 CupertinoButton(
                   onPressed: _launchGithub,
                   padding:  EdgeInsets.zero,
                   child:
                   Image.asset(
                     'assets/images/github1.png',
                     scale: 7,
                   ),
                 ),

                 const SizedBox(
                   width: 2.0,
                 ),

                 CupertinoButton(
                   onPressed: _launchInstagram,
                   padding:  EdgeInsets.zero,
                   child:
                   Image.asset(
                     'assets/images/insta.png',
                     scale: 11,
                   ),
                 ),

                 const SizedBox(
                   width: 2.0,
                 ),

                 CupertinoButton(
                   onPressed: _launchLinkedIn,
                   padding:  EdgeInsets.zero,
                   child:
                   Image.asset(
                     'assets/images/linkedin.png',
                     scale: 67,
                   ),
                 ),

                 const SizedBox(
                   width: 2.0,
                 ),

                 CupertinoButton(
                   onPressed: _launchTwitter,
                   padding:  EdgeInsets.zero,
                   child:
                   Image.asset(
                     'assets/images/twitter.png',
                     scale: 9.5,
                   ),
                 ),

               ],
             ),

             SizedBox(height: 80.0),

             GestureDetector(
               onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return technologies();
                   },
                 ),
               ),
               child: Container(
                 padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 120, 224, 210),
                 ),
                 child: const Text(
                   "Technology I worked With",
                   style: TextStyle(
                     color: Colors.black,
                     // fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),
                 ),
               ),
             ),

             SizedBox(height: 50.0),

             GestureDetector(
               onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return github();
                   },
                 ),
               ),
               child: Container(
                 padding: const EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 120, 224, 210),
                 ),
                 child: const Text(
                   "      Experience    ",
                   style: TextStyle(
                     color: Colors.black,
                     // fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),
                 ),
               ),
             ),


             SizedBox(height: 50.0),



           ],
        ),
      ),
    );

  }
}
