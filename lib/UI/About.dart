import 'package:flutter/material.dart';
import 'package:my_prorfolio/Widget/CustomText.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width:size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 1.1,
            width: size.width / 2 - 100,
            child: Column(
              children: [
                //About me title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "01.",
                      textsize: 20.0,
                      color: Color(0xff61F9D5),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    CustomText(
                      text: "About Me",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //About me desc
                Wrap(
                  children: [
                    CustomText(
                      text:
                          "Hello! I'm Usman, a Freelancer based in Rawalpindi, PK.\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                      "I am a passionate mobile application developer with a focus on Flutter and a strong interest in machine learning.\n\nI have a proven track record of delivering high-quality, pixel-perfect, innovative, and user-friendly mobile applications that meet the needs of my clients.My expertise in Flutter development allows me to create fast and responsive applications that provide a seamless user experience. Additionally, my interest in machine learning has allowed me to stay up-to-date with the latest advancements in the field and apply them to create intelligent and intuitive applications.I am constantly seeking new challenges and opportunities to grow as a developer and I am always eager to learn new skills and technologies.\n\nIf you're looking for a skilled and driven mobile application developer, I would love to work with you.",textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Shortly currently, I am pursuing my Bachelor's degree in Computer science at PIEAS University, as well as doing freelancing where I work on a wide variety of interesting and meaningful projects on a daily basis.\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies I've been working with recently:\n\n",
                      textsize: 16.0,
                      color: Color(0xff828DAA),
                      // fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(  
                    children: [
                      SizedBox(
                        width: size.width * 0.20,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "Dart"),
                            technology(context, "Flutter"),
                            technology(context, "Firebase"),
                            technology(context, "Tensorflow"),
                            technology(context, "Keras"),
                            technology(context, "Python"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.15,
                        height: size.height * 0.15,
                        child: Column(
                          children: [
                            technology(context, "C/C++, Java"),
                            technology(context, "HTML & (S)CSS"),
                            technology(context, "Mongo DB"),
                            technology(context, "Flask & Django"),
                            technology(context, "MYSQL"),
                            technology(context, "Git - Github"),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              // color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.12,
                    left: size.width * 0.120,
                    child: Card(
                      color: Color(0xff61F9D5),
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xff0A192F),
                      ),
                    ),
                  ),
                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({Key? key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff61F9D5).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/pic1.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
