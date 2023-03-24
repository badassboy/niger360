import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'login.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

  class _RegisterState extends State<Register>{
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late SingleValueDropDownController _cnt;
   bool isChecked = false;

  @override
  void initState(){
    _cnt = SingleValueDropDownController();
    super.initState();
  }

  @override
  void dispose()
  {
    _cnt.dispose();
    super.dispose();
  }

  


  @override
  Widget build(BuildContext context) {
    // final controller = useTextEditingController();



   return Scaffold(
    resizeToAvoidBottomInset: false,
    // resizeToAvoidBottomPadding: false,
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton
      (onPressed: (){
        Navigator.pop(context);
      },
       icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,)
       )
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                   Text ("Create New User", 
                   style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF00541C),
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.underline
                        ),),
                        SizedBox(height: 20,),
                        
                ],
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child:Form(
                child: Column(
                  children: [
                     DropDownTextField(
                  // initialValue: "name4",
                  controller: _cnt,
                  clearOption: true,
                  // enableSearch: true,
                  // dropdownColor: Colors.green,
                  searchDecoration: const InputDecoration(
                      hintText: "enter your custom hint text here"),
                  validator: (value) {
                    if (value == null) {
                      return "Required field";
                    } else {
                      return null;
                    }
                  },
                  dropDownItemCount: 6,

                  dropDownList: const [
                    DropDownValueModel(name: 'name1', value: "value1"),
                    DropDownValueModel(
                        name: 'name2',
                        value: "value2",
                        toolTipMsg:
                            "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                    DropDownValueModel(name: 'name3', value: "value3"),
                    DropDownValueModel(
                        name: 'name4',
                        value: "value4",
                        toolTipMsg:
                            "DropDownButton is a widget that we can use to select one unique value from a set of values"),
                    DropDownValueModel(name: 'name5', value: "value5"),
                    DropDownValueModel(name: 'name6', value: "value6"),
                    DropDownValueModel(name: 'name7', value: "value7"),
                    DropDownValueModel(name: 'name8', value: "value8"),
                  ],
                  onChanged: (val) {},
                ),

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
          hintText: "Choose a username"
        ),
      ),
      SizedBox(height: 10.0,),

      Row(
  children: const <Widget>[
    Expanded(
      child:TextField(
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
          hintText: "Choose a username"
        ),
      ),
    ),
    SizedBox(width: 8,),
    Expanded(
      child: TextField(
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
          hintText: "Choose a username"
        ),
      ), 
    ),

    Expanded(
      child:TextField(
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
          hintText: "Choose a username"
        ),
      ),
    ),
  ],
),

     SizedBox(height: 10,),
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
          hintText: "Enter phone number"
        ),
      ),

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
          
          hintText: "Enter a password"
        ),
      ),
      SizedBox(height: 10,),

      Text(

        "More than 8 characters and include special characters eg @,?,etc"
        ),
        SizedBox(height: 5,),

        Row(
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
            SizedBox(width: 10,),
            Text(
              "I hereby agree to Agric360 terms and conditions",
              style: TextStyle(
                color: Color(0xFF00541C),
                fontSize: 10.0,
                fontWeight: FontWeight.w700,
              ),
            )
              
          ],
        )




                  ],
                ),
                ),
                ),

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
          ),
        ),
      )
      ),
    
    
    

          
     
    );
  }

 }