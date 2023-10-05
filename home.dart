mport 'package:flutter/material.dart';
import "package:lesson_home/widget/widget.dart";

class MyApp extends StatelessWidget {
  final String but = "Forgot your password?";
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0), 
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle2(txt: 'Введите логин и пароль', width2: 0.8, height2: 0.4, colortxt2: Color.fromARGB(255, 255, 255, 255),), 
                  ],
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(hinttxt: 'login', width: 0.8, height: 0.1, colortxt: Color.fromARGB(255, 255, 255, 255), mode: false,),  
                  ],
                ),
                SizedBox(height: 8), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle(hinttxt: 'password', width: 0.8, height: 0.1, colortxt: Color.fromARGB(255, 255, 255, 255), mode: true), 
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      but,
                      style: TextStyle(color: Color.fromARGB(255, 80, 153, 236)),),
                  ],
                ),
                SizedBox(height: 60), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OvalRectangle2(txt: 'Entry', width2: 0.3, height2: 0.08, colortxt2: Color.fromARGB(255, 255, 255, 255),), 
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
