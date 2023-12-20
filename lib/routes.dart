import 'package:flutter/material.dart';
import 'package:iet_app/about.dart';
import 'package:iet_app/alumni.dart';
import 'package:iet_app/contact_us.dart';
import 'package:iet_app/faculties.dart';
import 'package:iet_app/landing_page.dart';
import 'package:iet_app/screens/home_screen.dart';
import 'package:iet_app/screens/signin_screen.dart';
import 'package:iet_app/vif.dart';



// initialRoute: '/',
// routes: {
// '/': (context) => HomePage(),
// '/home': (context) => HomePage(),
// '/about': (context) => BlankPage('About'),
// '/alumni': (context) => BlankPage('Alumni'),
// '/gps_photos': (context) => BlankPage('GPS Photos'),
// '/news_letter': (context) => BlankPage('News Letter'),
// '/vif': (context) => BlankPage('Vivekanand Incubation Foundation'),
// '/community_radio': (context) => BlankPage('Community Radio'),
// '/photo_gallery': (context) => BlankPage('Photo Gallery'),
// '/anti_ragging': (context) => BlankPage('Anti-Ragging'),
// '/contact_us': (context) => BlankPage('Contact Us'),
// },

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(
            settings: settings, builder: (_) =>  LandingPage());

      case '/contact':
        return MaterialPageRoute(
            settings: settings, builder: (_) => ContactUs());

      case '/about':
        return MaterialPageRoute(settings: settings, builder: (_) => About());

      case '/vif':
        return MaterialPageRoute(settings: settings, builder: (_) => VIF());

      case '/faculties':
        return MaterialPageRoute(
            settings: settings, builder: (_) => CollegeApp());

      case '/alumni':
        return MaterialPageRoute(settings: settings, builder: (_) => Alumini());
      case '/homeScreen':
        return MaterialPageRoute(settings: settings, builder: (_) => SignInScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Route not found: ${settings.name}'),
            ),
          ),
        );
    }
  }
}
