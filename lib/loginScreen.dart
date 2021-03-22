import 'package:flutter/material.dart';
import 'package:phone_authentification/otp.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Phone Auth"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Center(
                  child: Text(
                    "Phone Authentification",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text("+91"),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  controller: _controller,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            // width: double.infinity,

            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blueAccent,
                // onSurface: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTP(_controller.text)));
              },
              child: Text(
                "Next",
              ),
            ),
          )
        ],
      ),
    );
  }
}
