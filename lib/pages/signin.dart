import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/singup.dart';
import 'package:fooddelivery/utils/api.dart';
import 'package:fooddelivery/screen/mainscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   
   bool _togglevisibility= true;
   var email;
   var password;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "Enter your email", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ),
      onChanged: (value) {
        email = value;
      },
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "password", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ,
      suffixIcon: IconButton(
        onPressed: (){
          setState(() {
               _togglevisibility= !_togglevisibility;       
                    });
        },
        icon: _togglevisibility ? Icon(Icons.visibility_off):Icon(Icons.visibility) ,
      ),
      ),
      obscureText: _togglevisibility,

      onChanged: (value) {
          password = value;
      },

    );
  }

 Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        _login();
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
      ),
      child: Text(
        'LOGIN',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  _showMsg(msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          // Some code to undo the change!
        },
      ),
    ));
  }

  void _login() async {
    // setState(() {
    //   _isLoading = true;
    // });
    var data = {'email': email, 'password': password};

    // var map = new Map<String, dynamic>();
    // map['email'] = email;
    // map['password'] = password;
    var response = await Network().postData(data, '/login');

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      _showMsg(response.body);

      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      // Navigator.push(
      //   context,
      //   new MaterialPageRoute(builder: (context) => Home()),
      // );
      //_showMsg(body['message']);
      Navigator.pop(context);
    } else {
      _showMsg('Error ${response.statusCode}');
    }
}

@override

Widget build(BuildContext context){
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column
     (mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget> [
       Text("Sign In",style: TextStyle(fontSize: 40.0 ,fontWeight: FontWeight.bold),
       ),
       
       
         SizedBox(height: 100.0),
         Card(
           elevation: 5.0,
           child: Padding(
             padding: EdgeInsets.all(20.0),
             child: Column(
             children:<Widget> [
               _buildEmailTextField(),
               SizedBox(height: 30.0),
               _buildPasswordTextField(),
             ]
             ),
           ),
         ),
         SizedBox(height: 30.0),
         Container(
           height:50.0,
           decoration:BoxDecoration(
             color: Colors.blue,
             borderRadius: BorderRadius.circular(25.0)),
             child: Center(
               child: Text("Sign In",style: TextStyle(fontSize: 18.0,color: Colors.white ,fontWeight: FontWeight.bold),),
             ),
         ),
         Divider(height: 20.0,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget> [
           Text("Don't have an accont?",style: TextStyle(fontSize: 18.0,color: Colors.grey ,fontWeight: FontWeight.bold),),
           SizedBox(width: 15.0),
           
             
           
           GestureDetector(
             onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SignUp()));
             },
             child:
              Text("Sign Up",style: TextStyle(fontSize: 18.0,color: Colors.blue ,fontWeight: FontWeight.bold),
             ),
           ),
           
         ],
         )
      ],
      ),
    ),
    floatingActionButton: FloatingActionButton(



        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext conetxt) => MainScreen()));
                        },
       
        child: Icon(Icons.home),
      ), 
  );
}
}