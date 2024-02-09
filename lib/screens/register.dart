import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:actemo_flutter/components/background.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();

  String userFullName = '';
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
      backgroundColor: Colors.white,
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
                  padding: const EdgeInsets.only(top: 303.36),
                  child: Container(
                    padding: const EdgeInsets.only(left: 18.9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: GoogleFonts.roboto(
                            fontSize: 36.0,
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
                                // user full name text field
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Full Name',
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
                                          onTap: () {
                                            scrollAnimate();
                                          },
                                          onSaved: (value) {
                                            userFullName = value!;
                                          },
                                          onChanged: (value) {
                                            userFullName = value;
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
                                          key: const ValueKey(3),
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
              // get registered button
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
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    debugPrint('$userFullName, $userEmail, $userPassword');
                    try {
                      _tryValidation();
                    } catch (e) {
                      debugPrint(e.toString());
                    }
                  },
                  child: Text(
                    'Get Registered',
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
      scrollController.animateTo(
        MediaQuery.of(context).viewInsets.bottom,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
      );
    });
  }
}
