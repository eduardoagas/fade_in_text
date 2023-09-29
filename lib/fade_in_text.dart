import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FadingTextWidget extends StatefulWidget {
  @override
  _FadingTextWidgetState createState() => _FadingTextWidgetState();
}

class _FadingTextWidgetState extends State<FadingTextWidget> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    // After a delay, set _isVisible to true to trigger the fade-in animation
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Check if the text is fully visible before navigating to the next screen
        if (_isVisible) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => NextScene()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: AnimatedTextKit(animatedTexts: [
            FadeAnimatedText(
              'Your Fading Text Here',
              textStyle: const TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class NextScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Change the background color as needed
      body: Center(
        child: Text(
          'Next Scene',
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
