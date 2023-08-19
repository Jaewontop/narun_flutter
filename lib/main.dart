import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helloworld/consts/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'narun',
      theme: ThemeData(
        // inputDecorationTheme: MyInputDecorationTheme.greyTextField,
        scaffoldBackgroundColor: MyColors.primary1,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: MyColors.white),
          shadowColor: MyColors.primary1,
          color: MyColors.primary1,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                '/assets/about_page_1.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            _aboutText()
          ],
        ),
      ),
    );
  }

  Widget _aboutText() {
    return Column(
      children: const [
        Text(
          '감정의 안식처,\n나른 스페이스입니다.',
        )
      ],
    );
  }
}
