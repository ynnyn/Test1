import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'main.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'Welcome to my app',
            body: 'This is a customized app',
            image: Image.asset('assets/flower.JPG'),
            decoration: getPageDecoration()
        ),
        PageViewModel(
            title: 'Welcome to YANIs page',
            body: 'Click next',
            image: Image.asset('assets/flower.JPG'),
            decoration: getPageDecoration()
        ),

      ],
      done: const Text('done'),
      onDone: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.grey,
          size: const Size(10,10),
          activeSize: const Size(22,10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)
          ),
          activeColor: Colors.deepPurple
      ),
      curve: Curves.bounceOut,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
        ),
        bodyTextStyle: TextStyle(
            fontSize: 18,
            color: Colors.deepPurple
        ),
        imagePadding: EdgeInsets.only(top: 40),
        pageColor: Colors.white
    );
  }
}
