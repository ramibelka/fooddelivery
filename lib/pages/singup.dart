import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/signin.dart';
import 'package:fooddelivery/screen/mainscreen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   
   bool _togglevisibility= true;
   bool _toggleconfirmvisibility= true;
  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "Email", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ),
    );
  }
  Widget _buildUsernameTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "Username", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ),
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

    );
  }
  Widget _buildCPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "Confirm password", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ,
      suffixIcon: IconButton(
        onPressed: (){
          setState(() {
               _toggleconfirmvisibility= !_toggleconfirmvisibility;       
                    });
        },
        icon: _toggleconfirmvisibility ? Icon(Icons.visibility_off):Icon(Icons.visibility) ,
      ),
      ),
    obscureText: _toggleconfirmvisibility,

    );
  }
@override

Widget build(BuildContext context){
  return Scaffold(
    resizeToAvoidBottomInset: false,
    body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column
     (mainAxisAlignment: MainAxisAlignment.center,
       children:<Widget> [
       Text("Sign Up",style: TextStyle(fontSize: 40.0 ,fontWeight: FontWeight.bold),
       ),
       
       
         SizedBox(height: 100.0),
         Card(
           elevation: 5.0,
           child: Padding(
             padding: EdgeInsets.all(20.0),
             child: Column(
             children:<Widget> [
               _buildUsernameTextField(),
               SizedBox(height: 30.0),
               _buildEmailTextField(),
               SizedBox(height: 30.0),               
               _buildPasswordTextField(),
               SizedBox(height: 30.0),
               _buildCPasswordTextField(),
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
               child: Text("Sign Up",style: TextStyle(fontSize: 18.0,color: Colors.white ,fontWeight: FontWeight.bold),),
             ),
         ),
         Divider(height: 20.0,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:<Widget> [
           Text("Already have an accont?",style: TextStyle(fontSize: 18.0,color: Colors.grey ,fontWeight: FontWeight.bold),),
           SizedBox(width: 15.0),

            GestureDetector(
              onTap: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> SignIn()));
             },
              child: Text("Sign In",style: TextStyle(fontSize: 18.0,color: Colors.blue ,fontWeight: FontWeight.bold),
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