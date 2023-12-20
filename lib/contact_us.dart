import 'package:flutter/material.dart';

import 'component.dart';
import 'package:logger/logger.dart';

void main() {
  var logger = Logger();

  logger.d('Debug message');
  logger.i('Info message');
  logger.w('Warning message');
  logger.e('Error message');
}

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return ContactPage();
  }
}

class ContactPage extends StatelessWidget {
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
      backgroundColor: Colors.blueGrey,
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
                  urlLauncher("twitter.svg", "https://twitter.com/bhimraoagra"),
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
                  "assets/images/college_pic.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Column(
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
                      onPressed: () async {
                        logger.d(_firstNameController.text);
                        final addData = new AddDataFirestore();
                        if (formKey.currentState!.validate()) {
                          if (await addData.addResponse(
                              _firstNameController.text,
                              _lastNameController.text,
                              _emailController.text,
                              _phoneController.text,
                              _messageController.text)) {
                            formKey.currentState!.reset();
                            DialogError(context, "Message sent successfully");
                          } else {
                            DialogError(context, "Message failed to sent");
                          }
                        }
                      },
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 60.0,
                      minWidth: widthDevice / 2.2,
                      color: Colors.grey,
                      child: SansBold("Submit", 20.0),
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
        ),
      ),
    );
  }
}

// Center(
// child: Text(
// 'Connect with Us',
// style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// ),
// ),
// SizedBox(height: 10),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// IconButton(
// icon: Icon(Icons.email),
// onPressed: () {
// // Add logic to open email app
// },
// ),
// IconButton(
// icon: Icon(Icons.phone),
// onPressed: () {
// // Add logic to initiate a phone call
// },
// ),
// IconButton(
// icon: Icon(Icons.location_on),
// onPressed: () {
// // Add logic to open a map app
// },
// ),
// IconButton(
// icon: Icon(Icons.location_on),
// onPressed: () {
// // Add logic to open a map app
// },
// ),
// ],
// ),

//
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20.0),
// child: Column(
// children: [
// SizedBox(height: 15.0),
// Row(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Wrap(
// direction: Axis.vertical,
// spacing: 3.0,
// children: [
// Icon(Icons.email),
// SizedBox(height: 10.0),
// Icon(Icons.call),
// SizedBox(height: 10.0),
// Icon(Icons.location_pin),
// ],
// ),
// SizedBox(width: 40.0),
// Wrap(
// direction: Axis.vertical,
// spacing: 9.0,
// children: [
// Sans("directorietagra@gmail.com", 15.0),
// SizedBox(height: 10.0),
// Sans("0562-25226227", 15.0),
// SizedBox(height: 10.0),
// Sans("Khandari, Agra, Uttar Pradesh 282002",
// 15.0),
// ],
// ),
// ],
// )
// ],
// ))
