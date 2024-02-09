import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    getCurrentUser();
  }

  void getCurrentUser () {
    try {
      final user = _authentication.currentUser;

      if (user != null) {
        loggedUser = user;
        debugPrint(loggedUser!.email);
      }
    } catch (err) {
      debugPrint(err.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello,'),
            Text(loggedUser!.email!),
          ],
        ),
      ),
    );
  }
}
