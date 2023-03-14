import 'package:flutter/material.dart';
import 'package:my_prorfolio/Widget/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        WorkCustomData(
          title: "Pakistan Institute of Engineering & Applied Sciences",
          subTitle:
              "I am currently pursuing Bachelor's Degree in Computer Science \nat PIEAS University",
          duration: "2019 - Present",
        ),
        WorkCustomData(
          title:
              "Freelancer - Flutter | Dart Mobile App Developer | UI - UX Designer",
          subTitle:
              "Flutter Developer and experienced programmer with an extensive history of designing and coding \nsolutions. Skilled in Google’s Flutter/Dart, Firebase App and Web development on a global scale. If you \nare looking for someone that you can trust that will complete your app on time and on budget, then \nplease contact me. I have been developing software for 2+ years and take pride in everything I do.",
          duration: "July - 2021 to Present",
        ),
        WorkCustomData(
          title: "Machine Learning Co-lead at GDSC PIEAS",
          subTitle:
              "I served as Co-lead Machine Learning at Google Developer Student Club PIEAS \nand take part in training sessions",
          duration: "Nov - 2021 to May - 2022",
        ),
        WorkCustomData(
          title: "The Complete Flutter Development Bootcamp with Dart",
          subTitle:
          "Build beautiful, fast, and native-quality apps with Flutter. Become a fully-fledged Flutter developer \nBuild iOS and Android apps with just one code base",
          duration: "Jan - 2021 to July - 2021",
        ),
      ],
    );
  }
}
