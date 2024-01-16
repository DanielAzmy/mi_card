
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


final Uri linkedin_url = Uri.parse('https://www.linkedin.com/in/daniel-joseph-b04391204/');
final Uri facebook_url = Uri.parse('https://www.facebook.com/profile.php?id=100002270578896');
final Uri instagram_url = Uri.parse('https://www.instagram.com/danial_joseph11/');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/me.jpg'),
              ),
              const Text(
                'Daniel Azmy',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              const Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white60,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                width: 120,
                height: 2,
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.phone,
                            color: Colors.teal,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 45),
                          child: const Text(
                            '01140114441',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: const Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: const Text(
                            'danielazmy541@gmail.com',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               const SizedBox(
                 height: 20,
               ),
               Container(
                 margin: EdgeInsets.only(left: 100),
                 child: Row(
                  children: <Widget>[
                    Container(
                      child: GestureDetector(
                        onTap: _launchUrl,
                        child: const Image(image: AssetImage('images/LinkedIn.svg'),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Container(
                      child: GestureDetector(
                        onTap: _facebook_launchUrl,
                        child: const Image(image: AssetImage('images/facebook.png'),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                    const SizedBox(width: 30,),
                    Container(
                      child: GestureDetector(
                        onTap: _instagram_launchUrl,
                        child: const Image(image: AssetImage('images/instagram.svg'),
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ),
                  ],
                               ),
               )
            ],
          ),
        )),
      ),
    );
  }
}
Future<void> _launchUrl() async {
  if (!await launchUrl(linkedin_url)) {
    throw Exception('Could not launch $linkedin_url');
  }
}
Future<void> _facebook_launchUrl() async {
  if (!await launchUrl(facebook_url)) {
    throw Exception('Could not launch $instagram_url');
  }
}
Future<void> _instagram_launchUrl() async {
  if (!await launchUrl(instagram_url)) {
    throw Exception('Could not launch $instagram_url');
  }
}


