import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _formKey,
        body: Form(
            child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login ',
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
                        'Sign in to your account  ',
                        style: GoogleFonts.rubik(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 100.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your email',
                    style: GoogleFonts.rubik(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textStyle: const TextStyle(
                        color: Color.fromARGB(189, 20, 38, 87),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(189, 20, 38, 87),
                          ),
                        )),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 7, 3, 53),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: GoogleFonts.rubik(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textStyle: const TextStyle(
                        color: Color.fromARGB(189, 20, 38, 87),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(189, 20, 38, 87),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye),
                          color: const Color.fromARGB(189, 20, 38, 87),
                        )),
                    style: const TextStyle(
                      color: Color.fromARGB(255, 7, 3, 53),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password ?',
                    style: GoogleFonts.rubik(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textStyle: const TextStyle(
                        color: Color.fromARGB(189, 20, 38, 87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(189, 20, 38, 87),
                    fixedSize: Size(screenWidth, 60)),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Or login with ',
                style: GoogleFonts.rubik(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: InkWell(
                      child: Row(
                        children: [
                          Image.asset('assets/images/google.png'),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Google',
                            style: GoogleFonts.rubik(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              textStyle: const TextStyle(
                                color: Color.fromARGB(189, 20, 38, 87),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: InkWell(
                      child: Row(
                        children: [
                          Image.asset('assets/images/facebook.png'),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Facebook',
                            style: GoogleFonts.rubik(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              textStyle: const TextStyle(
                                color: Color.fromARGB(189, 20, 38, 87),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account ?',
                    style: GoogleFonts.rubik(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      textStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: GoogleFonts.rubik(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          textStyle: const TextStyle(
                            color: Color.fromARGB(189, 20, 38, 87),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
