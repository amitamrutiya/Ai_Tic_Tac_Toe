import 'package:ai_tic_tac_toe/screen/tic_tac_toe_game_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai_tic_tac_toe/constant/dimention.dart';
import 'package:ai_tic_tac_toe/main.dart';
import 'package:ai_tic_tac_toe/widgets/game_mode_tile.dart';

class OnePlayerScreen extends StatelessWidget {
  const OnePlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tic Tac Toe'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ModeTile(
                  subTitle: "You Never Loose",
                  onPressed: (() {
                    GameMode gameMode = GameMode.easy;
                    Get.to(() => TicTacToe(), arguments: [gameMode]);
                  }),
                  modeText: "Easy",
                  imagePath: "assets/images/1star.png",
                ),
                const SizedBox(
                  width: 20,
                ),
                ModeTile(
                  onPressed: (() {
                    GameMode gameMode = GameMode.medium;
                    Get.to(() => TicTacToe(), arguments: [gameMode]);
                  }),
                  subTitle: "50% Chance",
                  modeText: "Medium",
                  imagePath: "assets/images/2star.png",
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ModeTile(
                  subTitle: "You Never Win",
                  onPressed: () {
                    GameMode gameMode = GameMode.hard;
                    Get.to(() => TicTacToe(), arguments: [gameMode]);
                  },
                  modeText: "Hard",
                  imagePath: "assets/images/3star.png",
                ),
              ],
            )
          ],
        ));
  }
}
