import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_signin/main.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              Colors.blue,
              Colors.red,
            ],
             ),
        ),
        child: Card(
          margin: EdgeInsets.only(top: 200, bottom: 200, left: 30, right: 30),
          elevation: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Google Sign In Page",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: MaterialButton(
                  color: Colors.teal[100],
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height:30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                          image:
                            AssetImage('assets/images/googleimage.png'),
                            fit: BoxFit.cover),
                            shape: BoxShape.circle,
                      ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Sign In with Google")
                    ],
                    ),

                    onPressed: ()
                      signup(context);
                  },
               ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}