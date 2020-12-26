import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
          direction: context.isMobile ? Axis.vertical : Axis.horizontal,
          children: [
            "All Creative works,\n"
                .richText
                .withTextSpanChildren(
                    ["Selected projects.".textSpan.yellow400.make()])
                .xl4
                .white
                .make(),
            20.widthBox,
            Expanded(
                child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              items: [
                ProjectWidget(title: "CompX"),
               ProjectWidget(title: "Interview App"),
               ProjectWidget(title: "AI Radio"),
               ProjectWidget(title: "Secure Park"),
               ProjectWidget(title: "Jarvis Bot"),
              ],
              height: 170,
              viewportFraction: context.isMobile ? 0.75 : 0.4,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ))
          ]).p64().h(context.isMobile ? 500 : 300),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String title;

  const ProjectWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .neumorphic(color: Vx.purple700, elevation: 5, curve: VxCurve.flat)
        .alignCenter
        .square(200)
        .make()
        .p16();
  }
}
// import 'package:flutter/material.dart';
// import 'package:velocity_x/velocity_x.dart';

// class MiddleScreen extends StatefulWidget {
//   @override
//   _MiddleScreenState createState() => _MiddleScreenState();
// }

// class _MiddleScreenState extends State<MiddleScreen> {

//   final PageController pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Vx.purple700,
//       child: Flex(
//         direction: context.isMobile?Axis.vertical:Axis.horizontal,
//         children: [
//           "All Creative Works, \n".richText.withTextSpanChildren(
//             ["Selected Projects".textSpan.yellow400.make()]
//           )
//           .xl4
//           .white 
//           .make(),
//           20.widthBox,
//           Expanded(
//             child: VxSwiper(
              
//               viewportFraction: context.isMobile?0.75:0.4,
//               items:[
//                ProjectWidget(title: "CompX"),
//                ProjectWidget(title: "Interview App"),
//                ProjectWidget(title: "AI Radio"),
//                ProjectWidget(title: "Secure Park"),
//                ProjectWidget(title: "Jarvis Bot"),
//               ] ,
//               height: 170,
//               autoPlay: true,
//               autoPlayAnimationDuration: 1.seconds,
//               enlargeCenterPage: true,

//             )
//           )
//         ],
//       ).p64().h(context.isMobile?500:300 )
//     );
//   }
// }


// class ProjectWidget extends StatelessWidget {
//   final String title;

//   const ProjectWidget({Key key, @required this.title}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return  title
//                 .text.bold.white.xl.wide.center.make()
//                 .box.p8.roundedLg.alignCenter.square(200).neumorphic(
//                   color: Vx.purple700,
//                   elevation: 5.0,
//                   curve:VxCurve.flat
//                 ).make()
//                 .p16();
//   }
// }