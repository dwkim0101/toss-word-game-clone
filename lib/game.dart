import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';
import 'package:gap/gap.dart';
import 'package:progress_bar_countdown/progress_bar_countdown.dart';
import 'package:rounded_loading_button_plus/rounded_loading_button.dart';
import 'package:word_find_game/button.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final ProgressBarCountdownController _progressBarCountdownController =
      ProgressBarCountdownController();
  final RoundedLoadingButtonController _roundedLoadingButtonController =
      RoundedLoadingButtonController();
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xFFf4f6f7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Gap(30),
              isActive
                  ? SizedBox(
                      width: 200,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ProgressBarCountdown(
                            hideText: true,
                            initialDuration: const Duration(milliseconds: 700),
                            progressColor: Colors.black,
                            progressBackgroundColor: Colors.grey[300]!,
                            initialTextColor: Colors.black,
                            revealedTextColor: Colors.white,
                            height: 10,
                            textStyle: const TextStyle(
                                fontSize: 0, fontWeight: FontWeight.bold),
                            countdownDirection:
                                ProgressBarCountdownAlignment.left,
                            controller: _progressBarCountdownController,
                            autoStart: true,
                            onComplete: () {
                              print('Countdown Completed');
                              setState(() {
                                isActive = !isActive;
                              });
                              print(isActive);
                            },
                            onStart: () {
                              print('Countdown Started');
                            },
                            onChange: (String timeStamp) {
                              // print('Countdown Changed $timeStamp');
                            },
                            timeFormatter: (Duration remainingTime) {
                              final minutes = remainingTime.inMinutes
                                  .remainder(60)
                                  .toString()
                                  .padLeft(2, '0');
                              final seconds = remainingTime.inSeconds
                                  .remainder(60)
                                  .toString()
                                  .padLeft(2, '0');
                              final milliseconds =
                                  (remainingTime.inMilliseconds % 1000 ~/ 10)
                                      .toString()
                                      .padLeft(2, '0');
                              return '$minutes:$seconds:$milliseconds';
                            }),
                      ),
                    )
                  : const Text(
                      textAlign: TextAlign.center,
                      "앗, 아쉬워여\n시간이 끝났어요 ㅋ",
                      style: TextStyle(
                        // fontFamily: 'SUIT',
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.5,
                        height: 1.3,
                      ),
                    ),
              isActive ? const Gap(52) : const Gap(0),
              const Gap(50),
              Column(
                children: [
                  Row(
                    children: [
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(
                        child: isActive
                            ? wordButton("아름다움")
                            : wordButtonClicked("아름댜움"),
                      ),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                      Flexible(child: wordButton("아름다움")),
                    ],
                  ),
                ],
              ),
              const Gap(100),
              const GradientAnimationText(
                text: Text(
                  '5단계까지 성공하면 상금 10,000원 주겠냐 ㅋ',
                  style: TextStyle(
                      // fontSize: 50,
                      ),
                ),
                colors: [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Color(0xFFffa719),
                  Color(0xFFffa719),
                ],
                duration: Duration(seconds: 3),
                reverse: true, // reverse
              ),
              // Text(
              //   "",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       foreground: Paint()
              //         ..shader = const LinearGradient(
              //           colors: <Color>[Colors.black, Color(0xFFffa719)],
              //         ).createShader(const Rect.fromLTWH(0.0, 0.0, 400.0, 0))),
              // ),
              const Gap(10),
              RoundedLoadingButton(
                  animateOnTap: false,
                  color: const Color(0xFF161616),
                  onPressed: () {
                    setState(() {
                      // _progressBarCountdownController.pause();
                      // _progressBarCountdownController.resume();
                      // _progressBarCountdownController.isStarted;
                      _roundedLoadingButtonController.reset();
                    });
                  },
                  controller: _roundedLoadingButtonController,
                  child: const Text(
                    "다음 단계로 넘어가기",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
