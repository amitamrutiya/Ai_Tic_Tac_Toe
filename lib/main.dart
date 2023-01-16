import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ai_tic_tac_toe/constant/dimention.dart';
import 'package:ai_tic_tac_toe/screen/home_screen.dart';

enum Mark { x, o, none }

enum Winner { x, o, tie, none }

enum GameMode { easy, medium, hard }

enum PlayerMode { singleplayer, twoplayer }

const AI = Mark.x;
const HUMAN = Mark.o;

const STROKE_WIDTH = 6.0;
const HALF_STROKE_WIDTH = STROKE_WIDTH / 2.0;
const DOUBLE_STROKE_WIDTH = STROKE_WIDTH * 2.0;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 247, 246, 217),
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Dimensions.accentColor,
        ),
      ),
      home: const HomePage(),
    );
  }
}
