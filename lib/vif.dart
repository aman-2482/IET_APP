import 'package:flutter/material.dart';

import 'component.dart';

class VIF extends StatefulWidget {
  const VIF({Key? key}) : super(key: key);

  @override
  State<VIF> createState() => _VIFState();
}

class _VIFState extends State<VIF> {
  @override
  Widget build(BuildContext context) {
    return Incubation();
  }
}

class Incubation extends StatelessWidget {
  const Incubation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
                TabsMobile(text: "Home", routes: '/'),
                SizedBox(height: 20.0),
                TabsMobile(text: 'About', routes: '/about'),
                SizedBox(height: 20.0),
                TabsMobile(text: 'Alumni', routes: '/alumni'),

                // SizedBox(height: 20.0),
                // TabsMobile(text: 'Anti-Ragging', routes: '/anti_ragging'),
                SizedBox(height: 20.0),
                TabsMobile(text: "Faculties", routes: '/faculties'),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxISScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/images/vif.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  Text(
                    "V I F",
                    style: TextStyle(fontSize: 45.0),
                  ),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/images/vif.jpg",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    " Vivekanand Incubation Foundation",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "To emerge as leading incubator, promoting the spirit of innovation and entrepreneurship and offering high quality incubation facilities & guidance for the start-up community, and preparing good start-ups contributing to the well being of society and sustainable development of economy.",
                        15.0),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    " Facilities Available at VIF",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " * Co-Working Space of 100 Sqft with office setup.",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        " * Conference / Meeting Room,  High Speed Internet",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "* Access to Government Incentives & Grants under Start-in-Up programme ,",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "* Access to investor community/VCs,",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "* Mentorship guidance from Industry practitioners and Institutional Faculty",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "* Support in Institutional Procurement to VIF Start-ups,  Start-up support services from MoU partners, etc.",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    " Certificate",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/images/VIF-Certificate.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
