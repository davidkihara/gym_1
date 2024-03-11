import 'dart:math';

import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffa6ffcb), Color(0xff12d8fa), Color(0xff1fa2ff)],
          stops: [0, 0.5, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -100,
            right: -100,
            child: Opacity(
              opacity: .9,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 43, 162, 216),
                ),
              ),
            ),
          ),
          Positioned(
            top: -100,
            right: -100,
            child: Opacity(
              opacity: .4,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent[200],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: -10,
            child: Card(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.height * 1,
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Stay healthy even if you stay at home",
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Staying fit to keep you in good condition can now go through mobile apps.",
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class QuarterCircle extends StatelessWidget {
//   final Color color;

//   const QuarterCircle({Key? key, required this.color}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: QuarterCirclePainter(color),
//       size: Size(100, 100),
//     );
//   }
// }

// class QuarterCirclePainter extends CustomPainter {
//   final Color color;

//   QuarterCirclePainter(this.color);

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = color;
//     canvas.drawArc(
//       Rect.fromLTWH(0, 0, size.width, size.height),
//       0,
//       pi / 2,
//       true,
//       paint,
//     );
//     canvas.drawRect(
//       Rect.fromLTWH(0, 0, size.width / 2, size.height / 2),
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
