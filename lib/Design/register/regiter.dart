import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Register extends StatelessWidget {
  static String routeName="Register";
  String userName="";
  String email="";
  String password="";
  String phoneNumber="";
 @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar: AppBar(
       backgroundColor: Colors.transparent,
       title: Text("Cearte Account",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
       elevation: 0,
       centerTitle: true,
     ),
     body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(16),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             SizedBox(height: MediaQuery.of(context).size.height*.25,),
             TextFormField(
               onChanged: (value){
                 userName=value;
               },
               decoration: InputDecoration(
                 labelText: "User Name",
                 prefixIcon: Icon(Icons.person_outline_rounded),
               ),
             ),
             TextFormField(
               onChanged: (value){
                 email=value;
               },
               decoration: InputDecoration(
                 labelText: "Email",
                 prefixIcon: Icon(Icons.email_outlined),
               ),
             ),
             SizedBox(height: 7,),
             TextFormField(
               onChanged: (value){
                 password=value;
               },
               decoration: InputDecoration(
                   labelText: "Password",
                   prefixIcon: Icon(Icons.lock_outline),
               ),
             ),
             SizedBox(height: 7,),
             IntlPhoneField(
               decoration: InputDecoration(
                 labelText: "Phone Number",
               ),
               initialCountryCode: "EG",
               onChanged: (value){
                 phoneNumber=value.completeNumber;
               },
             ),
             SizedBox(height:MediaQuery.of(context).size.height*.18 ,),
             ElevatedButton(onPressed: (){}, child: Row(
               children: [
                 Text("Cearte Account",style: TextStyle(color: Color(0xffBDBDBD),fontSize: 14,fontWeight: FontWeight.w600),),
                 Spacer(),
                 Icon(Icons.arrow_forward,color: Color(0xffBDBDBD),size: 25,)
               ],
             ),
               style: ButtonStyle(
                   backgroundColor: MaterialStateProperty.all(Color(0xffFFFFFF))
               ),
             ),
            ],
         ),
       ),
     ),
   );
  }
}
