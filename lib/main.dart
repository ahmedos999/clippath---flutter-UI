import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Center(
          child: Text(
            'Categories',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipPath(
                clipper: TsClip1(),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffEF7884),
                      borderRadius: BorderRadius.circular(10)),
                  width: 180,
                  height: 180,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            const Positioned(
                              top: 50,
                              left: 30,
                              child: Text(
                                'Drawing',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            const Positioned(
                              top: 80,
                              left: 30,
                              child: Text(
                                '25 Courses',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Positioned(
                                top: 100,
                                left: 20,
                                child: SizedBox(
                                  width: 140,
                                  height: 80,
                                  // color: Colors.red,
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.asset('assets/nobg.png')),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Transform.scale(
                scaleX: -1,
                child: ClipPath(
                  clipper: TsClip1(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    width: 180,
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                top: 50,
                                right: 30,
                                child: Transform.scale(
                                  scaleX: -1,
                                  child: const Text(
                                    'Drawing',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 80,
                                right: 30,
                                child: Transform.scale(
                                    scaleX: -1,
                                    child: const Text(
                                      '25 Courses',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          color: Colors.white),
                                    )),
                              ),
                              Positioned(
                                  top: 100,
                                  left: 20,
                                  child: SizedBox(
                                    width: 140,
                                    height: 80,
                                    // color: Colors.red,
                                    child: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Image.asset('assets/nobg.png')),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ],
    ));
  }
}

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40);
    path.quadraticBezierTo(0, 0, 0, 0);
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height - 200, size.width, size.height);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}

class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, 0, size.width, 0);
    // path.lineTo(0, size.height);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height - 200, size.width, size.height);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
