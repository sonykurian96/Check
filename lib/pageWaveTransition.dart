import 'package:flutter/material.dart';


class WaveTransition extends StatelessWidget {
  WaveTransition({
    @required this.targetPage,
    @required this.fromCenter,
    this.duration
  });

  Widget targetPage;
  FractionalOffset fromCenter;
  Duration duration;


  @override
  Widget build(BuildContext context) {
    bool check() {
      if (duration != null) return true;
      return false;
    }


    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: check() ? duration : Duration(milliseconds: 1500),
      child: targetPage,
      builder: (context, value, child) {
        return ShaderMask(
          blendMode: BlendMode.modulate,
          shaderCallback: (rect) {
            return RadialGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.transparent,
                Colors.transparent
              ],
              stops: [0.0, 0.55, 0.6, 1.0],
              center: fromCenter, //FractionalOffset(0.50, 0.90),
              radius: value * 5,
            ).createShader(rect);
          },
          child: child,
        );
      },
    );
  }
}

