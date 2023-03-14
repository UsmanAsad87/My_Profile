import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_prorfolio/Widget/CustomText.dart';

class FeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final Function() ontab;

  FeatureProject(
      {required this.imagePath,
        required this.ontab,
        required this.projectDesc,
        required this.projectTitle,
        required this.tech1,
        required this.tech2,
        required this.tech3});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 0.999,
      width: size.width - 100,
      //color: Colors.tealAccent,
      child: Column(
        children: [
          Container(
            height: size.height - 100,
            width: size.width - 84,
            child: Stack(
              children: [
                //Image
                Positioned(
                  top: size.height * 0.02,
                  left: 20.0,
                  child: Container(
                    height: size.height * 0.60,
                    width: size.width * 0.5,
                    //color: Colors.redAccent,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(imagePath),
                    ),
                  ),
                ),

                // Short Desc
                Positioned(
                  top: size.height / 6,
                  right: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.18,
                    width: size.width * 0.35,
                    color: Color(0xff172A45),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: CustomText(
                            text: projectDesc,
                            textsize: 16.0,
                            color: Colors.white.withOpacity(0.4),
                            letterSpacing: 0.75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Tiitle
                Positioned(
                  top: 16.0,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.10,
                    width: size.width * 0.25,
                    //color: Colors.indigo,
                    child: Wrap(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      alignment: WrapAlignment.end,
                      children: [
                        CustomText(
                          text: projectTitle,
                          textsize: 27,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Project Resources
                Positioned(
                  top: size.height * 0.36,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: tech1 == null ? "" : tech1,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech2 == null ? "" : tech2,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        CustomText(
                          text: tech3 == null ? "" : tech3,
                          textsize: 14,
                          color: Colors.grey,
                          letterSpacing: 1.75,
                        ),
                      ],
                    ),
                  ),
                ),

                // Gitub Link
                Positioned(
                  top: size.height * 0.42,
                  right: 10.0,
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.25,
                    // color: Colors.indigo,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.github),
                          color: Colors.white.withOpacity(0.3),
                          onPressed: ontab,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class FeatureProjectMobile extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final Function() ontab;

  FeatureProjectMobile(
      {required this.imagePath,
        required this.ontab,
        required this.projectDesc,
        required this.projectTitle,
        required this.tech1,
        required this.tech2,
        required this.tech3});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [

        Container(
          margin: EdgeInsets.symmetric(vertical: 30),
          // height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          //color: Colors.tealAccent,
          child: Column(
            children: [
              // Project pic
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(imagePath),
                ),
              ),

              //Desc
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                child: CustomText(
                  text: projectDesc,
                  textsize: 14.0,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),


              // Gitub Link & Project Resources
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Gitub Link

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.github),
                      color: Colors.white.withOpacity(0.3),
                      onPressed: ontab,
                    ),
                  ),

                  // Project Resources
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: tech1 == null ? "" : tech1,
                        textsize: 12,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomText(
                        text: tech2 == null ? "" : tech2,
                        textsize: 12,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomText(
                        text: tech3 == null ? "" : tech3,
                        textsize: 12,
                        color: Colors.grey,
                        letterSpacing: 1.75,
                      ),
                    ],
                  ),
                ],
              ),


            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 50,
          child: Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            color: Colors.black45,
            child: CustomText(
              text: projectTitle,
              textsize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.75,
            ),
          ),
        ),
      ],
    );
  }
}