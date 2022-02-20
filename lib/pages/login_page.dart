import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/painting.dart';

class LoginPage extends StatefulWidget {
   const LoginPage({Key? key}) : super(key: key);

   final String storedPassword = 'Rehmat';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Stack(
          // fit: StackFit.expand,
            children: [
                  Positioned(
                      top: -200,
                      left: -140,
                      child:
                      Image.asset('Group.png',)
                      ),
                  Positioned(
                      left: 20,
                      top: 20,

                      child: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_back, color: Colors.white,size: 30,),
                  )),
                  Positioned(
                      top: 130,
                      right: 0,
                      child: Image.asset('killua.png',width: 200,height: 200,)),
              Positioned(
                top: 180,
                  left: 20,
                  child: Text('Welcome\nBack',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 35,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),)),
    ]
    ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: Form(
                  key: _formKey,
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width*.7,
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.5,
                       ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                label: Text('Email'),
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Email ir required";
                                }
                                if(!EmailValidator.validate(value)){
                                  return "Email is invalid";
                                }
                              },
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                label: Text('Password'),
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Password is required";
                                }
                                if(value != widget.storedPassword){
                                  return "Password doesn't Match";
                                }
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sign in',style: TextStyle(
                                  fontSize: 18,
                                ),),
                                CircleAvatar(
                                  backgroundColor: Colors.teal,
                                    child: IconButton(onPressed: (){
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }
                                      else{

                                      }

                                    }, icon: Icon(Icons.arrow_forward_sharp,)))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sign Up',style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                ),),
                                Text('Forget password?',style: TextStyle(
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                ),),
                                 ],
                            ),
                          ],
                        ),
                      ),
                  ),
                  ),
              ),
        
      ],

    );
  }
}
