// homepage_widget.dart
import 'package:convo_care/reusable_widgets.dart';
import 'package:convo_care/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomepageWidget extends StatelessWidget {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HSLColor.fromAHSL(1.0, 120, 0.93, 0.84).toColor(), // Start color
              HSLColor.fromAHSL(1.0, 210, 0.93, 0.64).toColor(), // End color with a slight blue tint
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[800], // Adjust to your desired contrast color
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Matte finish shadow
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "What do you wanna talk about",
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _textEditingController,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[900],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text("Send Message"),
                  onPressed: () {
                    // Call the function to save data to Firestore
                    saveDataToFirestore(_textEditingController.text);
                  },
                ),
            ]
            ),
          ),
        ),
      ),
    );
  }
}
