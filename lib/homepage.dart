
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:some/category.dart';
import 'package:some/favorites.dart';
import 'package:some/login.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book_detail.dart';
import 'data.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  List<Book> books=getBookList();
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
         actions: [
           Icon(
             Icons.search,
             size: 28,

           )
         ],

      ),
      // body: Container(
      //   child: Center(
      //     child: Text(
      //         "Homepage",
      //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20.0),
      //   ),
      //
      //   ),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "  Trending Now",
            style: GoogleFonts.catamaran(
              fontWeight: FontWeight.normal,
              fontSize: 22 ,
              //height: 1,
              color: Colors.white,
            ),

          ),
          Flexible(
              child: Container(
                child:ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: buildBooks(),
                )
              )
          ),


          SizedBox(
            height: 10,
          ),
          Text(
            "  Recommended for You",
            style: GoogleFonts.catamaran(
              fontWeight: FontWeight.normal,
              fontSize: 22 ,
              //height: 1,
              color: Colors.white,
            ),

          ),
          Flexible(
              child: Container(
                  child:ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: buildBooks(),
                  )
              )
          )
        ],
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
                    //Navigator.push(context,MaterialPageRoute(builder: (context)=>favorites()));
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
  //here
  List<Widget> buildBooks() {
    List<Widget> list=[];
    for(var i=0;i<books.length;i++){
      list.add(buildBook(books[i],i));
    }
    return list;
  }
  Widget buildBook(Book book,int index){
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>BookDetail(book:book))
            );
          },
          //margin: EdgeInsets.only(right: 32, left: index==0 ? 16 : 0,bottom:8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                //flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16,top:24),
                    child: Hero(
                      tag: book.title,
                      child: Image.asset(
                        book.image,
                        height: 200,
                        width: 200,
                        //fit: BoxFit.fitWidth,
                      ),

                   ),
                  )
              ),
              Text(
                book.title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        );
  }



  Widget X(Book book,int index){
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>BookDetail(book:book))
        );
      },
      //margin: EdgeInsets.only(right: 32, left: index==0 ? 16 : 0,bottom:8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //padding: EdgeInsets.all(10),
       Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                //"assets/Books/Alchemist.jpg",
                book.image,
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
                    //"Alchemist",
                    book.title,
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



        ],
      ),
    );
  }

}
