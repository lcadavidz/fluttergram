import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import './constants.dart';
import './size_config.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: textColor, width: 2.0),
    gapPadding: 10,
  );
  OutlineInputBorder outlineErrorInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: Colors.red[200], width: 2.0),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: Platform.isIOS
        ? FloatingLabelBehavior.always
        : FloatingLabelBehavior.auto,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    errorBorder: outlineErrorInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: textColor),
    bodyText2: TextStyle(color: textColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0XFF8B8B8B),
        fontSize: 18,
      ),
    ),
  );
}

DecoratedBox chatDecoratedBox(String image) {
  return DecoratedBox(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      border: Border.all(color: Colors.white, width: 2),
    ),
  );
}

Positioned chatPositioned() {
  return Positioned(
    right: 4,
    bottom: 0.5,
    child: SizedBox(
      height: 18,
      width: 18,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
          border: Border.all(color: Colors.white, width: 4),
        ),
      ),
    ),
  );
}

Positioned chatGroupPositioned(String image, double x, double y) {
  return Positioned(
    right: x,
    top: y,
    child: SizedBox(
      height: 50,
      width: 50,
      child: chatDecoratedBox(image),
    ),
  );
}

Column chatInfo(String name, String state) {
  return Column(
    children: [
      Text(
        name,
        style: TextStyle(
          color: Colors.black,
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        state,
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: getProportionateScreenWidth(12),
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
