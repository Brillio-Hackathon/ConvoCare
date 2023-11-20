import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:convo_care/sign_in.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Account Settings'),
            onTap: () {
              // Implement account settings functionality
            },
          ),
          ListTile(
            title: Text('Notifications'),
            onTap: () {
              // Implement notifications functionality
            },
          ),
          ListTile(
            title: Text('Privacy'),
            onTap: () {
              // Implement privacy settings functionality
            },
          ),
          ListTile(
            title: Text('Sign Out'),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
