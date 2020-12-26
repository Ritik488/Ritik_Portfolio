import 'package:flutter/material.dart';
import 'package:portfolio_ritik/footer.dart';
import 'package:portfolio_ritik/header.dart';
import 'package:portfolio_ritik/middle.dart';
import 'package:velocity_x/velocity_x.dart';
import 'coolers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if(context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
