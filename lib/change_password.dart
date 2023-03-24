import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
   State<ChangePassword> createState() => _ChangePasswordState();
}
  // const MyWidget({super.key});

class _ChangePasswordState extends State<ChangePassword>{

    final _formKey = GlobalKey<FormState>();
    final oldPassword = TextEditingController();
    final newPassword = TextEditingController();
    final confirmPassword = TextEditingController();

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
          "Change Password",
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
        padding: EdgeInsets.only(left: 10,right: 10,top: 50),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // old password
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
          hintText: "Old Password"
        ),
        obscureText: true,
      ),
      SizedBox(height: 10,),

      // New password
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
          hintText: "New Password"
        ),
      ),
      SizedBox(height: 10,),

    // confirm new password
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
          hintText: "Confirm New Password"
        ),
      ),
      SizedBox(height: 10,),

         Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Container(
                        padding: EdgeInsets.only(top: 3,left: 3),
                        decoration: BoxDecoration(
                           
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
                            "Reset Password",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,

                          ),),
                        ),
                      ),
                    ),

    


            ],
          )
          ),
      
      ),

    ),
    );
  }
}