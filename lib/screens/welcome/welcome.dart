import 'package:flutter/material.dart';
import 'package:gym_1/screens/welcome/home/home.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcome.jpg"),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xffa6ffcb),
                  Color(0xff12d8fa),
                  Color(0xff1fa2ff)
                ],
                stops: [0, 0.5, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: -100,
                  left: -100,
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
                  bottom: -100,
                  left: -100,
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
                  top: -100,
                  left: -100,
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
                  left: -100,
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
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent[100],
                borderRadius: const BorderRadius.only(
                    // topLeft: Radius.circular(50),
                    // topRight: Radius.circular(50),
                    ),
              ),
              height: MediaQuery.of(context).size.height * .4,
              width: MediaQuery.of(context).size.height * 1,
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Stay healthy even if you stay at home",
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      "Staying fit to keep you in good condition can now go through mobile apps.",
                      maxLines: 3,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      // height: 80,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 37, 154, 250),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                5.0,
                              ),
                            ),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
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
