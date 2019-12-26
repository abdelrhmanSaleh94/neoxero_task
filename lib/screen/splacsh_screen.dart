import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await new Future.delayed(const Duration(seconds: 5));
      Navigator.of(context).pushReplacementNamed(BottomNavScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                const Color(0xFF3366FF),
                const Color(0xFF00CCFF),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.mirror),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            child: TypewriterAnimatedTextKit(
              text: ['Neoxero Task'],
              textStyle: GoogleFonts.laila(
                textStyle: Theme.of(context).textTheme.title,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              isRepeatingAnimation: false,
              textAlign: TextAlign.start,
              alignment: AlignmentDirectional.topStart,
              // or Alignment.topLeft
            ),
          ),
        ),
      ),
    );
  }
}
