import 'package:flutter/material.dart';
import 'package:some/favorites.dart';
import 'package:some/homepage.dart';
import 'package:some/login.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hello Jimmy!",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20.0),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Categories",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20.0),
          ),

        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.black54,

          child: ListView(
            children: [
              DrawerHeader(
                  child: Center(
                    child: Text(
                      'L O G O',
                      style: TextStyle(fontSize: 35 , color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  )


              ),
              ListTile(
                leading: Icon(
                    color: Colors.white,
                    Icons.home
                ),
                title:Text(
                  'Home',
                  style:TextStyle(fontSize:20 , color: Colors.white ,fontWeight: FontWeight.normal),
                ),
                onTap:(){
                  //Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>homepage()));
                },
              ),

              ListTile(
                leading: Icon(
                    color: Colors.white,
                    Icons.category
                ),
                title:Text(
                  'Categories',
                  style:TextStyle(fontSize:20 , color: Colors.white ,fontWeight: FontWeight.normal),
                ),
                onTap:(){

                },
              ),
              ListTile(
                leading: Icon(
                    color: Colors.white,
                    Icons.favorite
                ),
                title:Text(
                  'Favorites',
                  style:TextStyle(fontSize:20 , color: Colors.white ,fontWeight: FontWeight.normal),
                ),
                onTap:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>favorites()));
                },
              ),
              ListTile(
                leading: Icon(
                    color: Colors.white,
                    Icons.logout
                ),
                title:Text(
                  'Logout',
                  style:TextStyle(fontSize:20 , color: Colors.white ,fontWeight: FontWeight.normal),
                ),
                onTap:(){
                  //Navigator.pop(context);
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));

                },
              )



            ],
          ),
        ),
      ),
    );
  }
}
