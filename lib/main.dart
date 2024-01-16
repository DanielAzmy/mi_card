import 'package:flutter/material.dart';

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
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child:  Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: const Icon(Icons.phone,
                          color: Colors.teal,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        child: const Text(
                          '01140114441',
                          style: TextStyle(color: Colors.teal,
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
              const SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(left: 40, right: 40),
                child:  Center(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: const Icon(Icons.email,
                          color: Colors.teal,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: const Text(
                          'danielazmy541@gmail.com',
                          style: TextStyle(color: Colors.teal,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
