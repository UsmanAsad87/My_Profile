import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_prorfolio/Model/Method.dart';
import 'package:my_prorfolio/UI/About.dart';
import 'package:my_prorfolio/UI/FeatureProject.dart';
import 'package:my_prorfolio/UI/Work.dart';
import 'package:my_prorfolio/Widget/AppBarTitle.dart';
import 'package:my_prorfolio/Widget/CustomText.dart';
import 'package:my_prorfolio/Widget/MainTiitle.dart';
import 'package:my_prorfolio/Widget/OSImages.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpanded = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpanded != false
                ? setState(
                    () {
                      isExpanded = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpanded != true
                ? setState(() {
                    print('setState is called');
                    isExpanded = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xff0A192F),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Mavigation Bar
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.change_history,
                            size: 32.0,
                            color: Color(0xff64FFDA),
                          ),
                          onPressed: () {}),
                      const Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DefaultTabController(
                            length: 4,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                                _scrollToIndex(index);
                              },
                              tabs: [
                                Tab(
                                  child: AppBarTitle(
                                    text: 'About',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Experience',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Project',
                                  ),
                                ),
                                Tab(
                                  child: AppBarTitle(
                                    text: 'Contact Us',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Card(
                          elevation: 4.0,
                          color: const Color(0xff64FFDA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(0.85),
                            height: size.height * 0.07,
                            width: size.height * 0.20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xff0A192F),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                method.launchURL(
                                    "https://drive.google.com/file/d/1UIqbOWlyReei8Itp_aAik_OGvqXuuVL8/view?usp=sharing");
                              },
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Resume",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.github),
                            color: const Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL("https://github.com/UsmanAsad87");
                            }),
                        IconButton(
                            icon: const FaIcon(FontAwesomeIcons.facebook),
                            color: const Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL("https://www.facebook.com/usmanasad7860");
                            }),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.linkedin),
                          color: const Color(0xffffA8B2D1),
                          onPressed: () {
                            method.launchURL(
                                "https://www.linkedin.com/in/usman-asad-0204441b8/");
                          },
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: const Icon(Icons.call),
                            color: const Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchCaller();
                            }),
                        IconButton(
                            icon: const Icon(Icons.mail),
                            color: const Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchEmail();
                            }),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: size.height * .06,
                                  ),
                                  CustomText(
                                    text: "Hi, my name is",
                                    textsize: 16.0,
                                    color: const Color(0xff41FBDA),
                                    letterSpacing: 3.0,
                                  ),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  CustomText(
                                    text: "M. Usman Asad.",
                                    textsize: 68.0,
                                    color: const Color(0xffCCD6F6),
                                    fontWeight: FontWeight.w900,
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  CustomText(
                                    text:
                                        "I build things for the Mobile Using Flutter.",
                                    textsize: 56.0,
                                    color: const Color(0xffCCD6F6).withOpacity(0.6),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    height: size.height * .04,
                                  ),
                                  Wrap(
                                    children: const [
                                      Text(
                                        "I'm a freelancer based in Pakistan, I am specializing in \nbuilding (and occasionally designing) exceptional, \napplications for android and IOS using Flutter.",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
                                          letterSpacing: 2.75,
                                          wordSpacing: 0.75,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * .12,
                                  ),

                                  //get in touch text
                                  InkWell(
                                    onTap: () {
                                      method.launchEmail();
                                    },
                                    hoverColor:
                                        const Color(0xff64FFDA).withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(4.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.09,
                                      width: size.width * 0.14,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xff64FFDA),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: const Text(
                                        "Get In Touch",
                                        style: TextStyle(
                                          color: Color(0xff64FFDA),
                                          letterSpacing: 2.75,
                                          wordSpacing: 1.0,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    height: size.height * 0.20,
                                  ),
                                ],
                              ),

                              //About Me
                              _wrapScrollTag(
                                index: 0,
                                child: About(),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),

                              //Where I've Worked
                              _wrapScrollTag(index: 1, child: Work()),
                              SizedBox(
                                height: size.height * 0.10,
                              ),

                              //Some Things I've Built Main Project
                              _wrapScrollTag(
                                  index: 2,
                                  child: Column(
                                    children: [
                                      MainTiitle(
                                        number: "0.3",
                                        text: "Some Things I've Built",
                                      ),
                                      SizedBox(
                                        height: size.height * 0.04,
                                      ),

                                      // FeatureProject(
                                      //   imagePath: "assets/images/PlantApp.png",
                                      //   ontab: () {
                                      //     method.launchURL(
                                      //         "https://github.com/UsmanAsad87/The-Plant-App");
                                      //   },
                                      //   projectDesc:
                                      //   "In The Plant App, I learned how to design complex UI design and animations to attract the audience.",
                                      //   projectTitle: "The Plant App",
                                      //   tech1: "Dart",
                                      //   tech2: "Flutter",
                                      //   tech3: "",
                                      // ),
                                      FeatureProject(
                                        imagePath: "assets/images/ChatGPT.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87/ChatGPT_Flutter_App");
                                        },
                                        projectDesc:
                                            "A Mobile app for both Android and IOS. Select the model and use that model to answer the queries. The purpose of this project is to use API provided bt openAI.",
                                        projectTitle: "ChatGPT Flutter",
                                        tech1: "Flutter",
                                        tech2: "Dart",
                                        tech3: "OpenAI",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/Groupie.gif",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87/Group-Chat-App");
                                        },
                                        projectDesc:
                                            "A Group Chat Application using Flutter and firebase, In this project implement Firebase CURD operation, User can create group, add others and chat with them.",
                                        projectTitle: "Group Chat App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/boiler.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87");
                                        },
                                        projectDesc:
                                            "A Flutter app to record data of new or repaired boiler and cylinder and generate PDF at end. this helps to ease the Engineers",
                                        projectTitle: "Boiler",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/Melanated_Audacity.gif",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87");
                                        },
                                        projectDesc:
                                            "A Flutter app to track the progress of task and projects in an elegant way and pixel perfect UI. User can create projects containing many tasks",
                                        projectTitle: "Task Management App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),
                                      //ff
                                      FeatureProject(
                                        imagePath: "assets/images/PlantApp.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87/The-Plant-App");
                                        },
                                        projectDesc:
                                            "In The Plant App, I learned how to design complex UI design and animations to attract the audience.",
                                        projectTitle: "The Plant App",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/Chico_App.gif",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87");
                                        },
                                        projectDesc:
                                            "Mirror is a Social Media app that has features like feed, chatting, calling and create AR voice notes.",
                                        projectTitle: "Mirror",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/property_finder.gif",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87/PropertyFinder");
                                        },
                                        projectDesc:
                                            "Flutter Property Finder application using firebase as a backend with a cool animation, it show the all the properties for sale or rent. Properties are also added through scraping.",
                                        projectTitle: "Property Finder",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "Firebase",
                                      ),

                                      FeatureProject(
                                        imagePath: "assets/images/Todeoy.png",
                                        ontab: () {
                                          method.launchURL(
                                              "https://github.com/UsmanAsad87/ToDos");
                                        },
                                        projectDesc:
                                            "Todo List app to create a  list of todos and then track them. All the data persistent through the use of Sqflite",
                                        projectTitle: "ToDoey",
                                        tech1: "Dart",
                                        tech2: "Flutter",
                                        tech3: "SqfLite",
                                      ),





                                      MainTiitle(
                                        number: "0.4",
                                        text: "Open Source Project",
                                      ),

                                      SizedBox(
                                        height: size.height * 0.04,
                                      ),




                                      //other Projects 1
                                      Container(
                                        height: size.height * 0.86,
                                        width: size.width - 100,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                OSImages(
                                                  image: "assets/images/2.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/7.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/8.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/5.png",
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * 0.04,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                CustomText(
                                                  text: "Cash Driver",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "Instyl",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "BMI",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "Court Counter",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),

                                      //other Projects 2
                                      Container(
                                        height: size.height * 0.86,
                                        width: size.width - 100,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                              children: [
                                                OSImages(
                                                  image: "assets/images/4.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/6.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/1.png",
                                                ),
                                                OSImages(
                                                  image: "assets/images/3.png",
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: size.height * 0.04,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                              children: [
                                                CustomText(
                                                  text: "Connect",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "Currency Converter",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "Login",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                                CustomText(
                                                  text: "Chatty",
                                                  textsize: 16.0,
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w700,
                                                  letterSpacing: 1.75,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),





                                    ],
                                  )),

                              const SizedBox(
                                height: 6.0,
                              ),

                              //Get In Touch
                              _wrapScrollTag(
                                index: 3,
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.68,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      // color: Colors.orange,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomText(
                                            text: "0.4 What's Next?",
                                            textsize: 16.0,
                                            color: const Color(0xff41FBDA),
                                            letterSpacing: 3.0,
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          CustomText(
                                            text: "Get In Touch",
                                            textsize: 42.0,
                                            color: Colors.white,
                                            letterSpacing: 3.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            height: 16.0,
                                          ),
                                          Wrap(
                                            children: [
                                              Text(
                                                "Although I'm currently looking for opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  letterSpacing: 0.75,
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 32.0,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              method.launchEmail();
                                            },
                                            child: Card(
                                              elevation: 4.0,
                                              color: const Color(0xff64FFDA),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                              ),
                                              child: Container(
                                                margin: const EdgeInsets.all(0.85),
                                                height: size.height * 0.09,
                                                width: size.width * 0.10,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff0A192F),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets
                                                      .symmetric(
                                                    horizontal: 8.0,
                                                  ),
                                                  child: Text(
                                                    "Say Hello",
                                                    style: TextStyle(
                                                      color: Color(0xff64FFDA),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    //Footer
                                    Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      //color: Colors.white,
                                      child: Text(
                                        "Designed & Built by Usman Asad 💙 Flutter",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.4),
                                          letterSpacing: 1.75,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "usmanasad0324@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
