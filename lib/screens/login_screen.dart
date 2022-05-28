import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Stack(
       children: [
         Container(
           height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
           child: Stack(

             children: [
               Container(
                 height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                 child: Image.asset("assets/images/bg.png",
                   fit: BoxFit.cover,

                 ),
               ),
               Container(
                 margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                 alignment: Alignment.bottomRight,
                 child: Image.asset("assets/images/ccapCornerDesign.png",
                   fit: BoxFit.contain,
                   width: double.infinity,
                 ),
               )
             ],
           ),
         ),
         Column(
           children: [
             Container(
               margin: EdgeInsets.fromLTRB(5, 30, 5, 0),
               padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
               decoration: BoxDecoration(
                 color: Color(0xff121213),
                 border: Border.all(
                     color: Color(0xff2C2C2E), // set border color
                     width: 1.0), // set border width
                 borderRadius: BorderRadius.all(Radius.circular(
                     5.0)), // set rounded corner radius
               ),
               child: TextFormField(
                 controller: controller.emailTextEditController,
                 cursorColor: Color(0xffFC4A1A),
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'Email ',
                   hintStyle: TextStyle(
                       fontSize: 18, color: Color(0xffAAAAAA)),
                 ),
                 style: TextStyle(
                   fontSize: 18,
                   color: Color(0xffAAAAAA),
                 ),
                 validator: Validator.validateEmail,
                 onFieldSubmitted: (_) {
                   FocusScope.of(context)
                       .requestFocus(_passwordFocusNode);
                 },
                 keyboardType: TextInputType.emailAddress,
               ),
             ),
           ],
         )
       ],
     ),
    );
  }
}
