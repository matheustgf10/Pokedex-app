import 'dart:math';

import 'package:flutter/material.dart';

class SpinnedPokeball extends AnimatedWidget {
  const SpinnedPokeball({
    Key? key,
    required AnimationController controller,
  }) : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -2,
      right: MediaQuery.of(context).size.width * 0.2,
      child: Transform.rotate(
        angle: _progress.value * 2.0 * pi,
        child: Container(
          child: Image.asset(
            'lib/app/shared/assets/images/pokeball.png',
            color: Color.fromRGBO(255, 255, 255, 0.1),
            height: 80,
          ),
        ),
      ),
    );
  }
}
