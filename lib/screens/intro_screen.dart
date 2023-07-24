
import 'package:e_ticarett/utils/colors.dart';
import 'package:e_ticarett/utils/utils.dart';
import 'package:e_ticarett/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: const [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),
          //title
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              "MNMLMANDI",
              textAlign: TextAlign.center,
              style: kTitleStyle,
            ),
          ),

          //information screen
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.white60,
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Appearence \n Shows Your Quality",
                    style: kNormalStyle.copyWith(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Change Of Your Quality \n Appearance with MNMLMANDI",
                    style: kNormalStyle.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicators(),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
                child: const Text("Sign Up with Email"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
