

import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Form(
            key: formKey,
            child: Stack(
              children: [
                Container(
                  color: Colors.blue[100],
                ),
                SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Text('Login',
                          style: TextStyle(
                              fontSize: 35),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        const CircleAvatar(
                          radius: 80,
                          foregroundImage: AssetImage("asset/images/yash.JPG"),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          validator: (value){
                            if(value!.length != 10){
                              return 'Number is not currect';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: 'Number',
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                            onPressed: (){
                              if(formKey.currentState!.validate()){
                                print('hurrreee');
                              } else {
                                print('something is wrong');
                              }
                            },
                            child: Text('Submit')
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: (){
                            print('Sign Up Page');
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                                fontSize: 35),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}