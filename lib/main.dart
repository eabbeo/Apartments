import 'package:apartments/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth,
            height: 350,
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage('assets/images/building.jpg'),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100))),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find your ',
                  style: GoogleFonts.rubik(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 7, 3, 53),
                    ),
                  ),
                ),
                Text(
                  'sweet home ',
                  style: GoogleFonts.rubik(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 7, 3, 53),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Schedule visit in just a few clicks, \n we make you feel at home ',
                  style: GoogleFonts.rubik(
                      fontSize: 15, color: Colors.grey.shade700),
                ),
                const SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLogin()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(189, 20, 38, 87),
                      fixedSize: Size(screenWidth, 60)),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
