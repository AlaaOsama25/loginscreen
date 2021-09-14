import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreenchallenge1/modules/registerin_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20.0,),
                Container(
                width: 200,
                height: 200,
                child: Image.asset('images/llgin.jpg',
                ),
              ),
                Text('Welcome back!',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),
              ),
                SizedBox(height: 10,),
                Text('Log in to your existant account of Q Allure',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey),
              ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                        ),
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20.0,),
                      TextFormField(
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock_open),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            )
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                        obscureText: true,
                      ),
                      SizedBox(height: 10.0,),
                      Text('Forgot Password?',
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  width: 200,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary:  Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )
                    ),
                      child: Text('LOG IN',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                      ),


                  ),
                ),
                SizedBox(height: 40.0,),
                Text('Or connect using',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.grey),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          primary:  Color(0XFF4267B2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('images/fblogo.png',
                          height: 15,
                            width: 15,
                          ),
                          SizedBox(width: 5.0,),
                          Text('Facebook',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Container(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary:  Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      ),
                      child: Row(
                        children: [
                          Image.asset('images/googlelogo.png',
                          height: 15,
                            width: 15,
                          ),
                          SizedBox(width: 10.0,),
                          Text('Google',
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ],
                      ),


                    ),
                  ),
                ],),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?'),
                    TextButton(
                        onPressed: (){
                          setState(() {
                            Navigator.push(
                                context, 
                                MaterialPageRoute(builder:(context) =>  RegisterScreen())
                            );
                          });
                        },
                        child: Text('Sign Up')
                    ),
                  ],
                ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}