import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:some/category.dart';
import 'package:some/homepage.dart';
import 'package:some/login.dart';

class favorites extends StatefulWidget {
  const favorites({super.key});

  @override
  State<favorites> createState() => _favoritesState();
}

class _favoritesState extends State<favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black26,
      backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
        "Hello Jimmy!",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20.0),
    ),
        ),
      body: SingleChildScrollView(
        child: Column(
             children: [
               /*Text(
                   "  Favorites",
                   style: GoogleFonts.catamaran(
                     fontWeight: FontWeight.normal,
                     fontSize: 22 ,
                     //height: 1,
                     color: Colors.white,
                   )
               ),*/
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.all(10),
                     child: Row(
                       children: [
                         Container(
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(30),
                             child: Image.asset(
                               "assets/Books/Alchemist.jpg",
                               width: 100,
                               //height: 140,
                             ),
                           ),
                         ),
                         SizedBox(width: 10),
                         Expanded(
                             child: Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                           children:[
                             Text(
                                 "Alchemist",
                             style: GoogleFonts.catamaran(
                               fontSize: 16,
                               color: Colors.white,
                             ),
                             ),
                             Text(
                               "Author: Paulo Coelho",
                               style: GoogleFonts.catamaran(
                                 fontSize: 14,
                                 color: Colors.white,
                               ),
                             ),
                           ],

                         )
                         ),

                       ],
                     ),


                   )
                 ],
               )
             ],

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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>category()));
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
              Navigator.pop(context);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>login()));

            },
          )



        ],
      ),
    ),
    ),
    );
  }
}
