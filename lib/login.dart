import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// ValueNotifier<bool> isDarkMode = ValueNotifier(true);

class Login extends StatefulWidget {
  @override
    State<Login> createState() => _LoginState();
}
  // const SecondScreen({Key? key}) : super(key: key);
class _LoginState extends State<Login>{
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Text("Sign In With Phone Number"),
              Text("Sign In With Email"),
              Text("Sign In With Username"),
            ],
          ),
          title: const Text('Woolha.com Flutter Tutorial'),
          backgroundColor: Colors.teal,
        ),

        body: TabBarView(
          physics: BouncingScrollPhysics(),
          // dragStartBehavior: DragStartBehavior.down,
          children: [

            
            // sign in with phone number
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              padding: EdgeInsets.only(left: 10,right: 13,top: 10),
              child:Form(
              child: Column(
                children: [
                   TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          hintText: "Enter your phone number"
        ),
      ),
      SizedBox(height: 10,),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              ),
              hintText: "Enter password"
            ),
          ),

          SizedBox(height: 5,),

          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Expanded(
              child:Checkbox(
              checkColor: Colors.white,
              // fillColor: Colors.black,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )),
            // SizedBox(width: 10,),

            Expanded(
              child: 
              
            Text(
              "Remember your password?",
              style: TextStyle(
                color: Color(0xFF00541C),
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
              ),
            )
            ),

            TextButton(
              onPressed: (){}, 
              child: Text(
                "Forgot  Password?",
                style: TextStyle(
                  color: Color(0xFF00541C),
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
              )

            ],
          ),
          SizedBox(height: 10,),

            Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            // border: Border(
                            //     bottom: BorderSide(color: Colors.black),
                            //     top: BorderSide(color: Colors.black),
                            //     right: BorderSide(color: Colors.black),
                            //     left: BorderSide(color: Colors.black)
                            // )
                        ),

                        child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Color(0xFF00541C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,

                          ),),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        
                        Text("SignIn",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF00541C)
                        ),)
                      ],
                    )



          
           

                ],

              )
              )
            ),

            // sign in phone number

            // sign in with email
             Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              padding: EdgeInsets.only(left: 10,right: 13,top: 10),
              child:Form(
              child: Column(
                children: [
                   TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          hintText: "Enter your email address"
        ),
      ),
      SizedBox(height: 10,),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              ),
              hintText: "Enter password"
            ),
          ),

          SizedBox(height: 5,),

          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Expanded(
              child:Checkbox(
              checkColor: Colors.white,
              // fillColor: Colors.black,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )),
            // SizedBox(width: 10,),

            Expanded(
              child: 
              
            Text(
              "Remember your password?",
              style: TextStyle(
                color: Color(0xFF00541C),
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
              ),
            )
            ),

            TextButton(
              onPressed: (){}, 
              child: Text(
                "Forgot  Password?",
                style: TextStyle(
                  color: Color(0xFF00541C),
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
              )

            ],
          ),
          SizedBox(height: 10,),
            Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            // border: Border(
                            //     bottom: BorderSide(color: Colors.black),
                            //     top: BorderSide(color: Colors.black),
                            //     right: BorderSide(color: Colors.black),
                            //     left: BorderSide(color: Colors.black)
                            // )
                        ),

                        child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Color(0xFF00541C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,

                          ),),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        
                        Text("SignIn",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF00541C)
                        ),)
                      ],
                    )
           

                ],

              )
              )
            ),
            // sign in with email

            // signin with username
             Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              padding: EdgeInsets.only(left: 10,right: 13,top: 10),
              child:Form(
              child: Column(
                children: [
                   TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          hintText: "Enter your username"
        ),
      ),
      SizedBox(height: 10,),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
              ),
              hintText: "Enter password"
            ),
          ),

          SizedBox(height: 5,),

          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Expanded(
              child:Checkbox(
              checkColor: Colors.white,
              // fillColor: Colors.black,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )),
            // SizedBox(width: 10,),

            Expanded(
              child: 
              
            Text(
              "Remember your password?",
              style: TextStyle(
                color: Color(0xFF00541C),
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
              ),
            )
            ),

            TextButton(
              onPressed: (){}, 
              child: Text(
                "Forgot  Password?",
                style: TextStyle(
                  color: Color(0xFF00541C),
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              )
              )

            ],
          ),
          SizedBox(height: 10,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(10),
                            // border: Border(
                            //     bottom: BorderSide(color: Colors.black),
                            //     top: BorderSide(color: Colors.black),
                            //     right: BorderSide(color: Colors.black),
                            //     left: BorderSide(color: Colors.black)
                            // )
                        ),

                        child: MaterialButton(
                          minWidth: double.infinity,
                          height:60,
                          onPressed: (){},
                          color: Color(0xFF00541C),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,

                          ),),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        
                        Text("SignIn",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF00541C)
                        ),)
                      ],
                    )
           

                ],

              )
              )
            ),
            // signin with username

          ],
        ),
      ),
         ),
    );
   
    
  }
}