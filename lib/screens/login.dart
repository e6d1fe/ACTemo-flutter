import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:actemo_flutter/screens/register.dart';
import 'package:actemo_flutter/screens/main_screen.dart';

import 'package:actemo_flutter/components/background.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _authentication = FirebaseAuth.instance;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  final _formKey = GlobalKey<FormState>();

  String userEmail = '';
  String userPassword = '';

  late ScrollController scrollController;

  void _tryValidation() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    final User user = userCredential.user!;


    if (user != null) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to log in with Google')
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Stack(
            children: [
              const Background(),
              SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  padding: const EdgeInsets.only(top: 330.27),
                  child: Container(
                    padding: const EdgeInsets.only(left: 18.9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Login',
                          style: GoogleFonts.roboto(
                            fontSize: 57.0,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4088f0),
                          ),
                        ),
                        SizedBox(
                          width: 278.0,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                // user email text field
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: GoogleFonts.roboto(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff4088f0),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Column(
                                      children: [
                                        TextFormField(
                                          key: const ValueKey(1),
                                          keyboardType: TextInputType.emailAddress,
                                          onTap: () {
                                            scrollAnimate();
                                          },
                                          onSaved: (value) {
                                            userEmail = value!;
                                          },
                                          onChanged: (value) {
                                            userEmail = value;
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty ||
                                                value.length < 5) {
                                              return 'Please enter at least 5 characters.';
                                            }
                                            return null;
                                          },
                                          scrollPadding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          decoration: InputDecoration(
                                            contentPadding:
                                            const EdgeInsets.all(6.0),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xff415e91),
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xff415e91),
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                          ),
                                          style: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff415e91),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                // user password text field
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Password',
                                      style: GoogleFonts.roboto(
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff4088f0),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Column(
                                      children: [
                                        TextFormField(
                                          key: const ValueKey(1),
                                          obscureText: true,
                                          onTap: () {
                                            scrollAnimate();
                                          },
                                          onSaved: (value) {
                                            userPassword = value!;
                                          },
                                          onChanged: (value) {
                                            userPassword = value;
                                          },
                                          validator: (value) {
                                            if (value!.isEmpty ||
                                                value.length < 5) {
                                              return 'Please enter at least 5 characters.';
                                            }
                                            return null;
                                          },
                                          scrollPadding: EdgeInsets.only(
                                              bottom: MediaQuery.of(context)
                                                  .viewInsets
                                                  .bottom),
                                          decoration: InputDecoration(
                                            contentPadding:
                                            const EdgeInsets.all(6.0),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xff415e91),
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xff415e91),
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.red,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(9.0),
                                            ),
                                          ),
                                          style: GoogleFonts.roboto(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff415e91),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).viewInsets.bottom,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // google login button
              Positioned(
                top: 580.0,
                left: 18.0,
                child: ElevatedButton(
                  child: Row(
                    children: [
                      Image.asset('assets/logos/google_logo.png',
                        width: 15.0,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Text('Continue with Google',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14.787,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff284777),
                          height: 1.333,
                          letterSpacing: 0.62,
                        ),
                      )
                    ],
                  ),
                  onPressed: () async {
                    try {
                      signInWithGoogle();
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                  },
                ),
              ),
              // button linked to register page
              Positioned(
                bottom: 13,
                left: 18.9,
                child: TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.zero,
                    ),
                  ),
                  child: Text('New Here? Register',
                    style: GoogleFonts.roboto(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                ),
              ),
              // login button
              Positioned(
                bottom: 19.13,
                right: 27.26,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                    fixedSize: const Size(129.6, 54.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.3),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      _tryValidation();

                      final newUser = await _authentication.signInWithEmailAndPassword(
                        email: userEmail,
                        password: userPassword,
                      );

                      if (newUser.user != null) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                      }
                    } catch (err) {
                      print(err);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Please check your email and password.'),
                          backgroundColor: Colors.blue,
                        ),
                      );
                    }
                  },
                  child: Text('Login',
                    style: GoogleFonts.roboto(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scrollAnimate() {
    Future.delayed(const Duration(milliseconds: 600), () {
      scrollController.animateTo(MediaQuery.of(context).viewInsets.bottom,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
      );
    });
  }
}
