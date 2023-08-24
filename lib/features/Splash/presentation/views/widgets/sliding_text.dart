import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
   SlidingText({super.key, required this.slidingcontroller});
  final Animation<Offset> slidingcontroller;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context,_) {
       return  SlideTransition(
         position: slidingcontroller,
         child: const Text(
            " Read Free Books",
           textAlign: TextAlign.center,
         ),
       );
      },
      animation: slidingcontroller,
    );
  }
}
