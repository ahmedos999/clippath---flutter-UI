import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 42, 84, 146),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 16, 35, 63),
        elevation: 0,
        actions: [Icon(Icons.bookmark)],
        centerTitle: true,
        title: const Text('Details',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Complate UX/UI \n & App Design',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '\$ 26.99',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        color: Colors.white),
                  )
                ],
              ),
              const Text(
                '2.8k enrolled',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 16, color: Colors.white),
              ),
              const SizedBox(), //this is a dummy widget just to align the row in left and center and leave right blank with space between
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                top: 70,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Positioned(
                  right: 1,
                  top: 10,
                  child: Hero(tag: 1, child: Image.asset('assets/per1.png'))),
              const Positioned(
                  top: 80,
                  left: 20,
                  child: Text(
                    'Rakib Kowshar',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
              const Positioned(
                  top: 100,
                  left: 20,
                  child: Text(
                    'Product Designer',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        color: Colors.black),
                  )),
              Positioned(
                  top: 150,
                  left: 20,
                  child: Row(
                    children: const [
                      Text(
                        '6 Courses',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                      ),
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Learn complate Complate UI/UX App Design, I \n will show you how to make wireframe, prototype,\n Ux Process & UI design',
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 15, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '24 Lessons',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.redAccent),
                    child: const Center(
                        child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Intro to the design',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
              const Text(
                '02:46',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Color.fromARGB(255, 223, 222, 222)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: const Center(
                        child: Icon(
                      Icons.play_arrow,
                      color: Colors.redAccent,
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Perfect wireframe design',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
              const Text(
                '12:46',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Color.fromARGB(255, 223, 222, 222)),
              ),
            ],
          )
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 250, 92, 92).withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      'Enroll Course Now',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 223, 222, 222)),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
