import 'package:flutter/material.dart';


class OvalRectangle extends StatelessWidget {
  final double width;
  final double height; 
  final Color colortxt;
  final String hinttxt;
  final bool mode;

  OvalRectangle({required this.width, required this.height, required this.colortxt, required this.mode, required this.hinttxt});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth = MediaQuery.of(context).size.width;
    double rectangleWidth = screenWidth * width; 
    // Вычисляем высоту прямоугольника
    double screenHeight = MediaQuery.of(context).size.height;
    double rectangleHeight = screenHeight * height - 4;


    return Container(
      width: rectangleWidth,
      height: rectangleHeight,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 123, 187, 150), 
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Container(
          width: rectangleWidth - 8,
          child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none, 
                hintText: hinttxt,
                hintStyle: TextStyle(color: colortxt),
            ),
            style: TextStyle(color: colortxt),
            textAlign: TextAlign.center,
            obscureText: mode,
          ),
        ),
      ),
    );
  }
}

class OvalRectangle2 extends StatelessWidget {
  final String txt;
  final double width2;
  final double height2; 
  final Color colortxt2;

  OvalRectangle2({required this.txt, required this.width2, required this.height2, required this.colortxt2});

  @override
  Widget build(BuildContext context) {
    // Вычисляем ширину прямоугольника
    double screenWidth2 = MediaQuery.of(context).size.width;
    double rectangleWidth2 = screenWidth2 * width2; 
    // Вычисляем высоту прямоугольника
    double screenHeight2 = MediaQuery.of(context).size.height;
    double rectangleHeight2 = screenHeight2 * height2 - 4;


    return Container(
      width: rectangleWidth2,
      height: rectangleHeight2,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 71, 233, 125), 
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 24, 
            color: colortxt2, 
          ),
        ),
      ),
    );
  }
}
