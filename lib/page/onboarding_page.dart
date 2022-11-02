import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:efundusv2/page/home_page.dart';
import 'package:efundusv2/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        child: IntroductionScreen(
          rawPages: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fhome1.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fhome2.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fhome3.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/fhome4.png"), fit: BoxFit.cover),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/fhome5.png"),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
                      color: Colors.transparent,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            const Spacer(),
                            ElevatedButton(
                              child: const Text(
                                'Get started',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: const Color(0XFF5D9DEB),
                                  padding: const EdgeInsets.all(10.0)),
                              onPressed: () {
                                goToHome(context);
                              },
                            ),
                          ],
                        )),
                  ],
                )),
          ],
          ///////
          ///////
          done: const Text('Finish',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0XFFFF7C00),
              )),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0XFFFF7C00)),
          ),
          onSkip: () => goToHome(context),
          next: const Icon(Icons.arrow_forward, color: Color(0XFFFF7C00)),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => {},
          globalBackgroundColor: Colors.white,
          skipOrBackFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage()),
      );

  Widget buildImage(String path) =>
      SizedBox(child: Image.asset(path), width: double.infinity);

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        activeColor: const Color(0XFFFF7C00),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 20),
      // descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(0),
      pageColor: Colors.white,
      fullScreen: true);
}
