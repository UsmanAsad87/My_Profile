import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_prorfolio/Model/Method.dart';
import 'package:my_prorfolio/UI/FeatureProject.dart';
import 'package:my_prorfolio/Widget/CustomText.dart';
import 'package:my_prorfolio/Widget/MobileProject.dart';

import '../Widget/MobileWorkBox.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  List<String> imgNames=['Login',"Cash Driver","Chatty","Connect","Court Counter","Currency Converter","Instyl","BMI","GetX Cart","Xylophone"];
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
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
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A192F),
      endDrawer: Drawer(
          elevation: 6.0,
          backgroundColor: Color(0xff0A192F),
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color:  Color(0xff032f63),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft:Radius.circular(20) )
                ),
                  currentAccountPicture: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  accountName: Text("M. Usman asad"),
                  accountEmail: Text("Usmanasad0324@gmail.com")),
              ListTile(
                title: Text("Share",style: TextStyle(color: Colors.white),),
                leading: Icon(Icons.share,color: Colors.white,),
              ),
              ListTile(
                leading: Icon(Icons.group,color: Colors.white),
                title: Text("About",style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 100,),
              Expanded(
                child: Text("Version 1.0.1",style: TextStyle(color: Colors.white)),
              )
            ],
          )),
      appBar: AppBar(
        backgroundColor: Color(0xff0A192F),
        elevation: 0.0,
        title: IconButton(
          icon: Icon(
            Icons.change_history,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomText(
                text: "Hi, my name is",
                textsize: 16.0,
                color: Color(0xff41FBDA),
                letterSpacing: 3.0,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              CustomText(
                text: "M. Usman Asad.",
                textsize: 45.0,
                color: Color(0xffCCD6F6),
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              CustomText(
                text: "I build things for the Mobile Using Flutter",
                textsize: 30.0,
                color: Color(0xffCCD6F6).withOpacity(0.6),
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Wrap(
                  children: [
                    Text(
                      "I'm a freelancer based in Pakistan, I am specializing in building (and occasionally designing) exceptional, applications for android and IOS using Flutter.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15.0,
                        letterSpacing: 2.75,
                        wordSpacing: 0.75,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                color: Color(0xff64FFDA),
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0.75),
                  height: 56.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Color(0xff0A192F),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      method.launchEmail();
                    },
                    hoverColor: Colors.green,
                    child: Text(
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
              ),
              SizedBox(
                height: size.height * 0.08,
              ),

              //About me
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  width: size.width,
                  //color: Colors.purple,
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
                            width: MediaQuery.of(context).size.width * 0.01,
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
                        height: size.height * 0.06,
                      ),

                      Container(
                        width: size.width,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "Dart"),
                                technology(context, "Flutter"),
                                technology(context, "Firebase"),
                                technology(context, "Tensorflow"),
                                technology(context, "Keras"),
                                technology(context, "Python"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                technology(context, "C/C++, Java"),
                                technology(context, "HTML & (S)CSS"),
                                technology(context, "Mongo DB"),
                                technology(context, "Flask & Django"),
                                technology(context, "MYSQL"),
                                technology(context, "Git - Github"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.08,
              ),

              //Image
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.7,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        right: 20,
                        left: 50.0,
                        child: Card(
                          color: Color(0xff61F9D5),
                          child: Container(
                            margin: EdgeInsets.all(2.75),
                            height: size.height * 0.45,
                            width: size.width * 0.66,
                            color: Color(0xff0A192F),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/pic1.jpg"),
                        ),
                      ),
                      Container(
                        height: size.height * 0.5,
                        width: size.width * 0.6,
                        color: Color(0xff61F9D5).withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ),

              //Where I've Worked title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "02.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Where I've Worked",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.08,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              MobileWork(),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Some Things I've Built title
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "03.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Some Things I've Built",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              FeatureProjectMobile(
                imagePath: "images/ChatGPT.png",
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


              FeatureProjectMobile(
                imagePath: "images/Groupie.gif",
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

              FeatureProjectMobile(
                imagePath: "images/boiler.png",
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

              FeatureProjectMobile(
                imagePath: "images/Melanated_Audacity.gif",
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
              FeatureProjectMobile(
                imagePath: "images/PlantApp.png",
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

              FeatureProjectMobile(
                imagePath: "images/chico.gif",
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

              FeatureProjectMobile(
                imagePath: "images/property_finder.gif",
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

              FeatureProjectMobile(
                imagePath: "images/Todeoy.png",
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



              SizedBox(height: 30,),
              //Some Other projects
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    text: "04.",
                    textsize: 20.0,
                    color: Color(0xff61F9D5),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  CustomText(
                    text: "Some Other projects",
                    textsize: 26.0,
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                    width: size.width * 0.04,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.all(50.0),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      final imgIndex=index+1;
                      final even =index%2==0;
                      return Container(
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(2.75),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/$imgIndex.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              right:even?null:0,
                              left:even?0:null,
                              top: 80,
                              child: Container(
                                alignment: Alignment.bottomRight,
                                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                color: Colors.black.withOpacity(0.7),
                                child: CustomText(
                                  text: imgNames[index],
                                  textsize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.75,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),




              SizedBox(height: 30,),
              FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  //height: size.aspectRatio,
                  width: size.width,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "0.4 What's Next?",
                        textsize: 16.0,
                        color: Color(0xff41FBDA),
                        letterSpacing: 3.0,
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      CustomText(
                        text: "Get In Touch",
                        textsize: 42.0,
                        color: Colors.white,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Text(
                            "Although I'm currently looking for opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.4),
                              letterSpacing: 0.75,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.07,
                      ),
                      Card(
                        elevation: 4.0,
                        color: Color(0xff64FFDA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(0.85),
                          height: size.height * 0.10,
                          width: size.width * 0.30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff0A192F),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
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
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://github.com/UsmanAsad87");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL(
                          "https://www.linkedin.com/in/usman-asad-0204441b8/");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchURL("https://www.facebook.com/usmanasad7860");
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 15.0,
                    ),
                    onPressed: () {
                      method.launchEmail();
                    },
                  )
                ],
              ),

              SizedBox(
                height: size.height * 0.07,
              ),

              //Footer
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                //color: Colors.white,
                child: Text(
                  "Designed & Built by Usman Asad 💙 Flutter",
                  textAlign: TextAlign.center,
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
      ),
    );
  }
}
