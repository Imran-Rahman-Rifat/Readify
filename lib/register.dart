import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/maybe1.png'),
              fit:BoxFit.cover
          )
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topCenter,
              child:Image(
                image:AssetImage('assets/register_icon.png'),
                height: 100,
                width: 90,

              ) ,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Register',
                style: TextStyle(color: Colors.lime.shade100, fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.06,
                right: 35,
                left: 35,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText:'Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      hintText:'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText:'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      )
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      // style: ButtonStyle(
                      //     backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueGrey.shade600)
                      //
                      // ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade600,
                            //primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )
                        ),
                        onPressed:(){},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.lime.shade100, fontWeight: FontWeight.normal, fontSize: 20.0),

                        )
                    ),
                  ),


                  SizedBox(
                    height: 19,
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      // style: ButtonStyle(
                      //     backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueGrey.shade600)
                      //
                      // ),
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.blueGrey.shade600,
                            primary: Colors.blueGrey.shade600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )
                        ),
                        onPressed:(){
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.lime.shade100, fontWeight: FontWeight.normal, fontSize: 20.0),

                        )
                    ),
                  )

                ],
              ),
            ),

          ],


        ),
      ) ,
    );
  }
}
