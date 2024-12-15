import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/Screens/HomeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/bg.jpg",),
          fit: BoxFit.cover,
          
          )
        ),

        child: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 25,vertical: 65),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Enjoy", style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),
              Text("the World!", style: TextStyle(
                color: Colors.white,
                fontSize: 30, 
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 15,),
               Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", style: TextStyle(
                color: Colors.white,
                fontSize: 16, 
              ),
              ),
                SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  width: 40,
                  height: 30,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios,size: 20,),
                  ),
                  
                ),
                
              )
            ],
          ),
        
        ),
        
        
        ),
      ),
      


    );
  }

}