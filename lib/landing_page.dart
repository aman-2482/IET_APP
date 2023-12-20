import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component.dart';

import 'package:logger/logger.dart';

import 'icons/Library.dart';
import 'icons/gallery.dart';
import 'icons/notification.dart';
import 'icons/placement.dart';
import 'icons/pt.dart';

void main() {
  var logger = Logger();

  logger.d('Debug message');
  logger.i('Info message');
  logger.w('Warning message');
  logger.e('Error message');
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class AboutUsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
              'About Us',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Welcome to the IET App, the official mobile platform representing the Institute of Engineering and Technology (IET) at Dr. Bhimrao Ambedkar University in Agra. IET holds a prestigious legacy of 90 years, characterized by a profound commitment to excellence in both teaching and research. Accredited with a Grade "B" by NAAC, IET stands as a beacon of academic achievement, fostering innovation and nurturing the intellectual growth of its students.\n\n'
            'At IET, our vision is to create a dynamic learning environment that empowers students to excel in their chosen fields. Our dedication to providing quality education is evident in our comprehensive curriculum, cutting-edge facilities, and a faculty committed to guiding students towards academic and professional success.\n\n'
            'For more information and to stay updated, visit our official website at www.ietagra.org. We invite you to be a part of the IET community, where we celebrate a tradition of academic excellence and prepare our students for a bright and successful future.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('IET App')),
        automaticallyImplyLeading: false,
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
                  urlLauncher("twitter.svg", "https://twitter.com/bhimraoagra"),
                  urlLauncher("youtube.svg",
                      "https://www.youtube.com/channel/UCtGwj16BQo3o55xNcMt1_bQ")
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 117.0,
                        backgroundColor: Colors.tealAccent,
                        child: CircleAvatar(
                          radius: 110.0,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage("assets/images/coll.png"),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 90.0),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dr. Bhimrao Ambedkar University, Agra',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'An Institution Of 90 Years of Glorious History & Contributions In Teaching And Research(Accredited Grade B” by NAAC) (called at the place of Agra University, Agra from 24.09.1995 vide U.P. Govt. Notification No. 33/XVII-V-1-1(ka)-43-1996, dated 06.01.1996)',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PTPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/pt.png',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhotoGallery()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/logo4.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoticeCircularWidget()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/logo2.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlacementCellPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/logo1.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ELibraryPage()),
                        );
                      },
                      child: Image.asset(
                        'assets/images/logo3.jpg',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

          SizedBox(height: 20.0),
          Expanded(
            child: PhotoSection(),
          ),
          SizedBox(height: 25.0),

          // Add the About Us section
          AboutUsSection(),
          Column(
            children: [
              Form(
                key: formKey,
                child: Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      "Contact Us",
                      style: (TextStyle(fontSize: 35.0)),
                    ),
                    TextForm(
                      heading: "First Name",
                      width: widthDevice / 1.4,
                      hintText: "Please type first name",
                      controller: _firstNameController,
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "First name is required";
                        }
                      },
                    ),
                    TextForm(
                      heading: "Last Name",
                      width: widthDevice / 1.4,
                      hintText: "Please type last name",
                      controller: _lastNameController,
                    ),
                    TextForm(
                      heading: "Phone number",
                      width: widthDevice / 1.4,
                      hintText: "Please type phone number",
                      controller: _phoneController,
                    ),
                    TextForm(
                      heading: "Email",
                      width: widthDevice / 1.4,
                      hintText: "Please type email address",
                      controller: _emailController,
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "Email is required";
                        }
                      },
                    ),
                    TextForm(
                      heading: "Message",
                      width: widthDevice / 1.4,
                      hintText: "Message",
                      maxLines: 10,
                      controller: _messageController,
                      validator: (text) {
                        if (text.toString().isEmpty) {
                          return "Message is required";
                        }
                      },
                    ),
                    MaterialButton(
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60.0,
                      minWidth: 200.0,
                      color: Colors.teal,
                      child: SansBold("Submit", 20.0),
                      onPressed: () async {



                        }


                    ),

                    SizedBox(height: 30),
                    Text(
                      'Connect with Us',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.email),
                          onPressed: () {
                            // Add logic to open email app
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.phone),
                          onPressed: () {
                            // Add logic to initiate a phone call
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.location_on),
                          onPressed: () {
                            // Add logic to open a map app
                          },
                        ),
                        IconButton(
                          icon: Image.network('URL_TO_YOUR_SOCIAL_MEDIA_ICON'),
                          onPressed: () {
                            // Add logic to open your social media profile
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class PhotoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Photo Gallery',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildAnimatedCard('assets/images/7.jpeg'),
              _buildAnimatedCard('assets/images/9.jpg'),
              _buildAnimatedCard('assets/images/3.jpg'),
              _buildAnimatedCard('assets/images/1.jpg'),
              _buildAnimatedCard('assets/images/2.jpg'),
              _buildAnimatedCard('assets/images/8.jpg'),
              _buildAnimatedCard('assets/images/5.jpg'),
              // Add more photos as needed
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAnimatedCard(String imagePath) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle photo tap
        },
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 500),
          tween: Tween<double>(begin: 0.0, end: 1.0),
          builder: (context, value, child) {
            return Opacity(
              opacity: value,
              child: child,
            );
          },
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
              ],
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
