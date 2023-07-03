// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';

String name='';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 // String name = "";
  bool changeButton =false;
  final _formkey = GlobalKey<FormState>();

moveToHome(BuildContext context)async{
  if(_formkey.currentState!.validate()){
                        setState(() {
                          changeButton=true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, "/home");
                        setState(() {
                          changeButton=false;
                        });
                        }
                           }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                       // enabledBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(8),
                      // borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                      // ),   
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 22, 255, 216),
                        ),
                      ),
                      icon: Icon(
                        Icons.account_circle_outlined,
                        // color: Color.fromARGB(255, 22, 255, 216),
                        color: Colors.black, ),
                      hintText: "Enter Username",
                      labelText: "Username",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 22, 255, 216),
                      ),
                    ),
                    // validator: (String? value) {
                    //   if (value != null && value .isnotEmpty) {
                    //     return "Username cannot be empty";
                    //   }
                    //   return null;
                    // },
                     onChanged: (value) {
                      name = value;
                      setState(() {});
                     },
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                         // enabledBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(8),
                      // borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                      // ), 
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          width: 2,
                          color: Color.fromARGB(255, 22, 255, 216),
                        ),
                      ),
                      icon: Icon(Icons.lock),
                      hintText: "Enter Password",
                      labelText: "Password",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 22, 255, 216),
                      ),
                    ),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      return null;
                    },
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  // ),
                Material(
                  color: Colors.green,
                   borderRadius: BorderRadius.circular(changeButton?50:80),
                    child: InkWell(
                    splashColor: Colors.red,
                      onTap: () =>moveToHome(context),
                        // setState(() {
                        //   changeButton=true;
                        // });
                        // await Future.delayed(Duration(seconds: 1));
                        // Navigator.pushNamed(context, "/home");
                        // setState(() {
                        //   changeButton=false;
                        // });
  
                      child: AnimatedContainer(
                        duration:Duration(seconds: 1),
                        width:changeButton ? 50: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton?
                        Icon(Icons.done,
                        color:Colors.redAccent ,) : 
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 17,
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        // decoration: BoxDecoration(
                        //   color: Color.fromARGB(255, 22, 255, 216),
                        //   borderRadius: BorderRadius.circular(changeButton?50:80),
                       // ),
                       ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

