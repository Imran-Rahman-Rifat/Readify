//import 'dart:html';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:some/pdf_api.dart';
import 'package:some/pdf_viewer_page.dart';

import 'data.dart';

class BookDetail extends StatelessWidget {
  //const BookDetail({super.key});
  final Book book;
  BookDetail({required this.book});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            child: Hero(
              tag: book.title,
                child: Image.asset(
                  book.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),

          Padding(
              padding: EdgeInsets.only(top: 48,left: 32),
            child: GestureDetector(
              onTap:(){
                Navigator.pop(context);

            },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height *0.5,
              padding: EdgeInsets.only(top: 64),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    book.title,
                    style: GoogleFonts.catamaran(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      color: Colors.white,
                    ),
                  ),
                  //author here
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                  ),

                  //author here

                  //review if
                  Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Text(
                          book.description,
                          style: GoogleFonts.catamaran(
                            fontSize: 16,
                            color: Colors.white,
                          ),

                        ),
                      )
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 85,
                    width: size.width,
                    padding: EdgeInsets.only(top: 16,left: 32,right: 32, bottom: 32),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                      )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch ,
                      children: [
                        Container(
                          //height: 100,
                          width: size.width/2 -44,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade900,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.cyan.withOpacity(0.4),
                                  spreadRadius: 2,
                                   blurRadius: 2,
                                  offset: Offset(0,0),
                                )



                           ]  ,

    ),


                          child: Center(
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                             ElevatedButton(


                              onPressed :() async{
                                //final url='Before.pdf';
                                final url=book.pdf;
                                final file = await PDFApi.loadFirebase(url);
                                if(file==null) return;
                                openPDF(context,file as File );
                                child:
                                Text(
                                  "Read Now",
                                  style: GoogleFonts.catamaran(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ) ,
                                );

                                },
                               child:
                               Text(
                                 "Read Now",
                                 style: GoogleFonts.catamaran(
                                   fontSize: 18,
                                   color: Colors.white,
                                   fontWeight: FontWeight.w600,
                                 ) ,
                               ),
    //),


                               /*SizedBox(
                                 width: 8,
                               ),*/
                               // Icon(
                               //   Icons.keyboard_arrow_down,
                               //   color: Colors.white,
                                )
                             ],
                           )
    ,
                          ),
                        )
                      ],
                    ),
                  )



                ],
              ),
            ),

          ),
          // Align(
          //   alignment: Alignment.bottomLeft,
          //   child: ,
          // )
        ],


      ),
    );
  }
  void openPDF(BuildContext context, File file)=> Navigator.of(context).push(
    MaterialPageRoute(builder: (context)=>PDFViewerPage(file : file)),
  );
}


