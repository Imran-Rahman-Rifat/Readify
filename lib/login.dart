import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:some/homepage.dart';
import 'package:some/register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          Container(
          alignment: Alignment.topCenter,
          child:Image(
            image:AssetImage('assets/log-icon.png'),
            height: 120,
            width: 120,

          ) ,
          ),
        Container(
        alignment: Alignment.topCenter,
        child: Text(
          'Login',
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
                        primary: Colors.blueGrey.shade600,
                        //primary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )
                      ),
                        onPressed:(){
                          //Navigator.pop(context);
                          //Navigator.push(context,MaterialPageRoute(builder: (context)=>homepage()));
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> homepage()));
                        },
                        child: Text(
                          'Sign In',
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
                            primary: Colors.grey.shade600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )
                        ),
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>register()));
                        },
                        child: Text(
                          'Sign Up',
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
