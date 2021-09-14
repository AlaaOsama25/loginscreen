import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon : Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
          },

        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text('Let\'s Get Started!',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 10.0,),
              Text('Create an account to Q Allure to get all features',
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.grey),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      ),
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      ),
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Phone',
                          prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      ),
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_open),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      ),
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0,),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      ),
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      obscureText: true,
                    ),
                    SizedBox(height: 10.0,),
                  ],
                ),
              ),
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
                  child: Text('CREATE',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                  ),


                ),
              ),
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(
                      onPressed: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Text('Login here')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
