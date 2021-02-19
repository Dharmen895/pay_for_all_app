import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pay_for_all_app/Screens/components/background.dart';
import 'package:pay_for_all_app/utils/rounded_button.dart';

import '../login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "WELCOME TO PAYFORALL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height*0.05,),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height*0.05,),
            RoundedButton(text: 'LOGIN',
              press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginScreen();
              },),);
              },

            ),
            RoundedButton(text: 'SIGNUP',
              color: Colors.purple[200],
              textColor: Colors.black,
              press: (){},

            ),
          ],
        ),
      ),
    );
  }
}


