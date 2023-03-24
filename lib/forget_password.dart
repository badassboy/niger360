import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
   State<ForgetPassword> createState() => _ForgetPasswordState();
}
  // const MyWidget({super.key});

class _ForgetPasswordState extends State<ForgetPassword>{

    final _formKey = GlobalKey<FormState>();
   late final oldPassword = TextEditingController();
   late final newPassword = TextEditingController();
   late final confirmPassword = TextEditingController();

    @override
    void dispose(){
      oldPassword.dispose();
      newPassword.dispose();
      newPassword.dispose();
      super.dispose();
    }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
         elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton
      (
        onPressed: (){
        Navigator.pop(context);
      },
       icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)
       )
      ),
      body: Container(
        child:Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:  Text(
                "Forget Password",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              ),


                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20,top: 5),
                  child:Text(
                "Please enter your email to help us reset your password",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ), 
                  ),
               

              SizedBox(height: 10,),


              // old password
              Padding(
                padding:  EdgeInsets.only(left: 20, right: 20),
                child:TextField(
                  keyboardType: TextInputType.emailAddress,
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
                      hintText: "Enter Email"
                    ),
        
      ),
              ),
      SizedBox(height: 10,),

      // submitt button
      Padding(
        padding:EdgeInsets.only(left: 20, right: 20),
        child:ElevatedButton(
              onPressed: (){},
              child: Text(
                "Submit Email",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Color(0xFF00541C)),
                 fixedSize: MaterialStateProperty.all(Size(270.0, 40.0)),
              ),
              )
      )
       

   


            ],
          )
          ),
      
      ),
      ),

    
    );
  }
}