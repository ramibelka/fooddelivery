import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 Position _currentPosition;

  Widget _buildNameTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "enter nickname", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ),
    );
  }
  Widget _buildphonenumberTextField(){
    return TextFormField(
      decoration: InputDecoration(hintText: "enter phone number", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ),
    );
  }
  Widget _buildfeedbackTextField(){
    return TextFormField(decoration: InputDecoration(hintText: "what do you think about us", hintStyle: TextStyle(color: Colors.grey,fontSize: 18.0 ) ));
      
  }
   
        
     
      
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children:<Widget> [
       Text("Profile", style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
       SizedBox(height: 10.0,),
       Row(
         crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.start,
         children:<Widget> [
         Container(
           height:120.0 ,
           width: 120.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(60.0),
             boxShadow: [
               BoxShadow(
                 blurRadius: 5.0,
                 offset: Offset(3.0, 5.0),
                color: Colors.black45,
                ),
               
             ],
             image: DecorationImage(
                            image: AssetImage(
                              "assets/images/profil.jpg",
                            ),
                            fit: BoxFit.cover,
             ),
             
         ),
         ),
         SizedBox(width: 20.0),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget> [
             Text("Welcome To FooDZ", style: TextStyle(fontSize: 20.0,color: Colors.blueAccent ),),
             SizedBox(height: 10.0,),
            
             
           ],
         ),
       ],
       ),
       SizedBox(height: 10.0,),
       Text("Account",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
       Card(
           elevation: 5.0,
           child: Padding(
             padding: EdgeInsets.all(20.0),
             child: Column(
             children:<Widget> [
               _buildNameTextField(),
               SizedBox(height: 20.0),
               _buildphonenumberTextField(),
               SizedBox(height: 20.0),
               _buildfeedbackTextField(),
                SizedBox(height: 20.0),
                if (_currentPosition != null)
              Text(
                  "LAT: ${_currentPosition.latitude}, LNG: ${_currentPosition.longitude}"),
            FlatButton(
              child: Text("Get location"),
              onPressed: () {
                _getCurrentLocation();
              },
            ),
                
             ] 
             ),
           ),
         ),
          ],
          ),
       ),
    );
  }
   _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
   }
   




}

