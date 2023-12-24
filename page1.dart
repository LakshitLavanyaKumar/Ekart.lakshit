







import 'package:app_dev_cc_course/components/my_textfield.dart';
import 'package:flutter/material.dart';

import 'components/my_button.dart';
final usernamecontroller = TextEditingController();
final passwordcontroller = TextEditingController();
void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.grey[400],
    body: SafeArea(
      child:Center(
        child: Column(
          children: [
            //for some space
            SizedBox(height: 50),

            Icon(
              Icons.lock,
              size: 100,
            ),
            //again some space
            SizedBox(height: 50),


            //welcome,back you have been missed
            Text(
              'Welcome back  you',
              style:TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
            //username textfield
            MyTextField(
              controller: usernamecontroller,
              hintText: 'Username',
              obscureText: false,
            ),//password textfield
            //again some space
            SizedBox(height: 25),


            MyTextField(
              controller: passwordcontroller,
              hintText: 'Password',
              obscureText: true,
            ),



            //forgot password
            //again some space
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password',
                      style: TextStyle(color: Colors.green)
                  ),
                ],
              ),
            ),





            //sign in button
            MyButton(),
            //or comtinue with

            //xgoogle + apple sign in button

            // not a member? register now
            //child
          ],
        ),
      ),
    ),





  ),//scaffold
));


