import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DigitCode/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
//import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/Screens/DigitCode/components/otp_field.dart';
import 'package:flutter_auth/Screens/DigitCode/components/style.dart';
//import 'package:count_down_timer/count_down_timer.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Enter the 4 digit code sent to you on via SMS",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 80,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            RoundedButton(
              text: "SUBMIT",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),

       FlatButton(
          child: Text('Resend Code'),
          
        ),
        
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
