import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:actemo_flutter/components/background.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                    debugPrint('button linked to register page was clicked');
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
                  onPressed: () {
                    debugPrint('$userEmail, $userPassword');
                    try {
                      _tryValidation();
                    } catch (e) {
                      debugPrint(e.toString());
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
