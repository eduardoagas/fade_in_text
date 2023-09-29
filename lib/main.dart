import 'package:flutter/material.dart';
import 'fade_in_text.dart'; // Import the fading text widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FadingTextWidget(), // Use the FadingTextWidget as the home screen
    );
  }
}
