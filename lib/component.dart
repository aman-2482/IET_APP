// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black)),
              child: Image.asset('coll.png', filterQuality: FilterQuality.high),
            ),
          ),
          TabsMobile(text: "Home", routes: '/home'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Work", routes: '/works'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Blog", routes: '/blog'),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", routes: '/about'),
          SizedBox(height: 20.0),
          TabsMobile(text: "Contact", routes: '/contact'),
          SizedBox(height: 40.0),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     urlLauncher("assets/instagram.svg",
          //         "https://www.instagram.com/chauhanprathvirajsingh/"),
          //     urlLauncher(
          //         "assets/twitter.svg", "https://twitter.com/prithviraj__k"),
          //     urlLauncher("assets/github.svg", "https://github.com/prithvirajz")
          //   ],
          // )
        ],
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  final text;
  final routes;
  const TabsMobile({Key? key, @required this.text, @required this.routes})
      : super(key: key);

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.grey,
      child: Text(
        widget.text,
        selectionColor: Colors.black,
        // style: GoogleFonts.
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.routes);
      },
    );
  }
}

class GoogleFonts {
  static openSans({required double fontSize, required FontWeight fontWeight}) {}

  static poppins({required double fontSize, required FontWeight fontWeight}) {}
}

class Sans extends StatelessWidget {
  final String text;
  final double size;

  const Sans(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.normal, // or specify another FontWeight
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLines;
  final controller;
  final validator;
  const TextForm({
    Key? key,
    @required this.heading,
    @required this.width,
    @required this.hintText,
    this.maxLines,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16.0),
        SizedBox(height: 5.0),
        SizedBox(
          width: width,
          child: TextFormField(
            validator: validator,
            controller: controller,
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                  fontSize: 11.0, fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }
}

// class AddDataFirestore {
//   var logger = Logger();
//   CollectionReference response =
//       FirebaseFirestore.instance.collection('message');
//   Future addResponse(final firstName, final lastName, final email,
//       final phoneNumber, final message) async {
//     return response.add({
//       'first name': firstName,
//       'last name': lastName,
//       'email': email,
//       'phone number': phoneNumber,
//       'message': message,
//     }).then((value) {
//       logger.d("Success");
//       return true;
//     }).catchError((error) {
//       logger.d(error);
//       return false;
//     });
//   }
// }

// Future DialogError(BuildContext context, String title) {
//   return showDialog(
//       context: context,
//       builder: (BuildContext context) => AlertDialog(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             title: SansBold(title, 20.0),
//           ));
// }

class AnimatedCard extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;
  const AnimatedCard(
      {Key? key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.height,
      this.width})
      : super(key: key);

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.grey),
        ),
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height == null ? 200 : widget.height,
                width: widget.width == null ? 200 : widget.width,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(height: 10),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15.0)
            ],
          ),
        ),
      ),
    );
  }
}

urlLauncher(String imgPath, String url) {
  return IconButton(
    icon: SvgPicture.asset(imgPath, color: Colors.black, width: 35),
    onPressed: () async {
      await launchUrl(Uri.parse(url));
    },
  );
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;
  const AbelCustom(
      {Key? key,
      @required this.text,
      @required this.size,
      this.color,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
          color: color == null ? Colors.black : color,
          fontWeight: fontWeight == null ? FontWeight.normal : fontWeight),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();
  CollectionReference response =
  FirebaseFirestore.instance.collection('message');
  Future addResponse(final firstName, final lastName, final phoneNumber,
      final email, final message) async {
    return response
        .add({
      'first name': firstName,
      'last name': lastName,
      'phone number': phoneNumber,
      'email': email,
      'message': message
    })
        .then((value) {
      logger.d("success");
      return true;
    })
        .catchError((error) {
      logger.d(error);
      return false;



    });
  }
}

Future DialogError(BuildContext context,String title) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
        title: SansBold(title, 20.0),
      ));
}
