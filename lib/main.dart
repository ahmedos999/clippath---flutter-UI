import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/Details.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
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
        backgroundColor: const Color.fromARGB(115, 42, 84, 146),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hi Ahmed',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        'Find Your Course',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    child: FittedBox(
                        fit: BoxFit.contain,
                        child: Image.asset('assets/per1.png')),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 79, 184, 233),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '50% OFF',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '246+ Course',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        const Text(
                          'Enroll Now',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.play_circle_outline,
                      size: 50,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      width: 170,
                      height: 120,
                      // color: Colors.red,
                      child: FittedBox(
                          fit: BoxFit.contain,
                          child: Image.asset('assets/per2.png')),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Categories',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
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
                                          fit: BoxFit.contain,
                                          child: Image.asset(
                                              'assets/drawing.png')),
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
                                        'UI/UX',
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
                                            fit: BoxFit.contain,
                                            child:
                                                Image.asset('assets/idea.png')),
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular Courses',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Details(),
                  ),
                );
              }),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 222, 239, 247),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 227, 241, 106)),
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Hero(
                                tag: 1, child: Image.asset('assets/per1.png'))),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Complate UX/UI \n & App Design',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Row(
                            children: const [
                              Icon(Icons.play_circle),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '24 lessons',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.black54),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 249, 234, 97),
                                  ),
                                  Text(
                                    '4,9',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Colors.black38),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                              ),
                              const Text(
                                '\$ 26.99',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
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
