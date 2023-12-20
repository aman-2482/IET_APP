import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'component.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return AboutSection();
  }
}

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: Drawer(
          backgroundColor: Colors.blueGrey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 72,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.tealAccent,
                    backgroundImage: AssetImage("assets/images/coll.png"),
                  ),
                ),
                SizedBox(height: 30.0),
                TabsMobile(text: "Home", routes: '/home'),
                SizedBox(height: 20.0),
                TabsMobile(text: 'About', routes: '/about'),
                SizedBox(height: 20.0),
                TabsMobile(text: 'Alumni', routes: '/alumni'),
                SizedBox(height: 20.0),
                TabsMobile(text: "Faculties", routes: '/faculties'),
                // SizedBox(height: 20.0),
                // TabsMobile(text: 'Anti-Ragging', routes: '/anti_ragging'),
                SizedBox(height: 20.0),
                TabsMobile(text: "Incubation Foundation", routes: '/vif'),
                SizedBox(height: 20.0),
                TabsMobile(text: 'Contact us', routes: '/contact'),
                SizedBox(height: 40.0),
                TabsMobile(text: "Logout", routes: '/homeScreen'),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    urlLauncher("instagram.svg",
                        "https://www.instagram.com/dbrau_agra_1927/"),
                    urlLauncher(
                        "twitter.svg", "https://twitter.com/bhimraoagra"),
                    urlLauncher("youtube.svg",
                        "https://www.youtube.com/channel/UCtGwj16BQo3o55xNcMt1_bQ")
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              //Introduction 1st section
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.blueGrey,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                      radius: 110.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/coll.png")),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "About us",
                      style: TextStyle(fontSize: 60),
                    ),
                    SizedBox(height: 20.0),
                    Sans(
                        "The Institute of Engineering & Technology is an integral part of Dr. B. R. Ambedkar University, Agra (formerly Agra University), situated at Khandari Campus, Agra-282002, Uttar Pradesh and approved by AICTE(All India Council for Technical Education). It has been established with the objective to meet the growing demand of technically trained people with strong knowledge of respective discipline of engineering backed with a support of latest technological advancements, general management and India mythological views which would enable an engineer to be a perfect executive.",
                        15.0),
                    Sans(
                        "Institute has implemented Outcome based model of education, which is entirely a student centric approach.IET is set in to dynamics of transformation and witnessing entirely new teaching-learning environment and thus academic system of IET can provide multiple learning opportunities for students to acquire and demonstrate the knowledge, skills and competencies for rewarding career",
                        15.0),
                    SizedBox(height: 15.0),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),

              // 2nd section
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(imagePath: "assets/images/college_2.jpg", width: 350.0),
                  SizedBox(height: 40.0),
                  Text(
                    "Institute of Engineering & Technology,",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    " Agra ",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
              Center(
                child: Sans(
                    "Institute is running 5 departments( Department of Computer Science& Engineering, Electronics & Communication Engineering, Mechanical Engineering, Civil Engineering and Electrical Engineering. Each Department has their own state of the art laboratories with latest laboratory equipments. Institute also established Language lab with 30-computer system of latest configuration with advanced English language software, audio-visual equipment, high-speed internet and air-conditioned environment. Institute is fully wifi campus with jio-wifi.",
                    15.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "The extensive infrastructure, ultra-modern Labs, Smart classrooms(Projector, Smart board, podium), fully computerized library, highly qualified and experienced faculties, facilities for extra-curricular activities provide an ideal environment to our students to thrive. Institute also provides GATE and Employability training to the students to make them industry ready.",
                style: TextStyle(fontSize: 15.0),
              ),
              SizedBox(height: 10.0),
              Text(
                "We are also running TEQIP III Programme under MHRD, Govt. of India to improve the quality of the technical education in the institute.",
                style: TextStyle(fontSize: 15.0),
              ),
              SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 3.0,
                            children: [
                              Icon(Icons.email),
                              SizedBox(height: 10.0),
                              Icon(Icons.call),
                              SizedBox(height: 10.0),
                              Icon(Icons.location_pin),
                            ],
                          ),
                          SizedBox(width: 40.0),
                          Wrap(
                            direction: Axis.vertical,
                            spacing: 9.0,
                            children: [
                              Sans("directorietagra@gmail.com", 15.0),
                              SizedBox(height: 10.0),
                              Sans("0562-25226227", 15.0),
                              SizedBox(height: 10.0),
                              Sans(
                                  "Khandari, Agra, Uttar Pradesh 282002", 15.0),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     SizedBox(height: 20.0),
              //     AnimatedCard(
              //         imagePath: "assets/app_dev.jpg",
              //         width: 200.0,
              //         reverse: true),
              //     SizedBox(height: 30.0),
              //     SansBold("App Development", 20.0),
              //     SizedBox(height: 10.0),
              //   ],
              // ),
              // Center(
              //   child: Sans(
              //       "In the world of app development, I'm a master of innovation, crafting seamless experiences and building bridges between people and technology. Each app I create contributes to a more connected and convenient future.",
              //       15.0),
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     SizedBox(height: 20.0),
              //     AnimatedCard(
              //       imagePath: "assets/full_stack.jpg",
              //       width: 200.0,
              //     ),
              //     SizedBox(height: 30.0),
              //     SansBold("Full Stack Development", 20.0),
              //     SizedBox(height: 10.0),
              //   ],
              // ),
              // Center(
              //   child: Sans(
              //       "In full stack development, I bridge front-end and back-end, crafting seamless, holistic solutions. I'm the linchpin that ensures a seamless user experience, one line of code at a time.",
              //       15.0),
              // ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     SizedBox(height: 20.0),
              //     AnimatedCard(
              //         imagePath: "assets/data_an.jpg",
              //         width: 200.0,
              //         reverse: true),
              //     SizedBox(height: 30.0),
              //     SansBold("Data Analysis", 20.0),
              //     SizedBox(height: 10.0),
              //   ],
              // ),
              // Center(
              //   child: Sans(
              //       "In data analysis, I'm a detective of insights, translating raw data into actionable knowledge. I thrive on revealing the stories hidden within datasets, unlocking a more informed and data-driven future.",
              //       15.0),
              // ),

              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
