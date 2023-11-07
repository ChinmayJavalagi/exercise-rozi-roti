import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool valuee = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'Create your Acount',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    hintText: 'Email',
                    prefixIcon: Visibility(
                      child: Icon(Icons.mail_rounded, color: Colors.grey[500],),
                    ),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    fillColor: Colors.grey[100],
                    filled: true,
                    hintText: 'Password',
                    prefixIcon: Visibility(
                      child: Icon(Icons.lock_rounded, color: Colors.grey[500],),
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: Colors.black,
                    value: false,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0), // Change the radius here
                    ),
                    onChanged:  (value){
                    },
                  ),
                  Text('Remember me',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.5,
                      width: 80,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 10),
                      child: Text('or continue with'),
                    ),
                    Container(
                      height: 0.5,
                      width: 80,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}