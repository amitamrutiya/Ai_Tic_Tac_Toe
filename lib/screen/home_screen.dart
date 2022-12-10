import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai_tic_tac_toe/constant/dimention.dart';
import 'package:ai_tic_tac_toe/screen/one_player_screen.dart';
import 'package:ai_tic_tac_toe/widgets/player_mode_tile.dart';
import 'package:ai_tic_tac_toe/screen/two_player_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/tic tac toe.png",
            height: Dimensions.height10 * 40,
            width: Dimensions.width10 * 40,
          ),
          PlayerModeTile(
              mainText: "Single Player",
              icon1: Icons.person_outline,
              icon2: Icons.computer_outlined,
              onButtonPressed: (() {
                Get.to(() => const OnePlayerScreen(),
                    transition: Transition.fadeIn);
              })),
          SizedBox(
            height: Dimensions.height30,
          ),
          PlayerModeTile(
              mainText: "Two Player",
              icon1: Icons.person_outline,
              icon2: Icons.person_outline,
              onButtonPressed: (() {
                Get.to(() => TwoPlayerScreen());
              })),
        ],
      ),
    );
  }
}

