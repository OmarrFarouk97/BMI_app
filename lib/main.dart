import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'moudules/bmi_app/BMI/BMI.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),

            backgroundColor: Colors.white,
            elevation: 0.0,
            // ignore: deprecated_member_use
            backwardsCompatibility: false,
            titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
            color: Colors.black45,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff40D876),
          )),
      darkTheme: ThemeData(
          hintColor: Colors.white,
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Color(0xff131429),
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Color(0xff131429),
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: Color(0xff131429),
            elevation: 0.0,
            backwardsCompatibility: false,
            titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: TextTheme(
            bodyText1: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff40D876),
            unselectedItemColor: Colors.grey,
            backgroundColor: Color(0xff131429),
          )),
      // themeMode: AppCubit.get(context).isDarke
      //     ? ThemeMode.light
      //     : ThemeMode.dark,
      themeMode: ThemeMode.dark,
      home: BMI(),
    );
  }
}
