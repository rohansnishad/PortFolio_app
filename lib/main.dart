import 'package:flutter/material.dart';
import 'package:portfolio_app/Screens/home.dart';
import 'package:portfolio_app/Screens/resume.dart';
import 'package:portfolio_app/Screens/github_1.dart';

import 'Screens/github_1.dart';
import 'Screens/tech_page.dart';

void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:homePage(),
    );
  }
}

