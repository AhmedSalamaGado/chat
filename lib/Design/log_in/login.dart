import 'package:flutter/material.dart';
class LogIn extends StatelessWidget {
  static String routeName="LogIn";
  String email="";
  String Password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("LogIn",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
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
              Text("Welcome Back !",style: TextStyle(fontWeight:FontWeight.bold ,fontSize: 24,color: Colors.black),),
              SizedBox(height: 7,),
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
                  Password=value;
                },
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_outlined)
                ),
              ),
              SizedBox(height: 7,),
              Text("Forget Password",style: TextStyle(fontSize:12 ,color: Color(0xff303030)),),
              SizedBox(height: 14,),
              ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Text("LogIn",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                  Spacer(),
                  Icon(Icons.arrow_forward,color: Colors.white,size: 25,)
                ],
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xff3598DB))
              ),
              ),
              SizedBox(height: 14,),
              Text("Or Cearte My Account",style: TextStyle(fontSize:14 ,color: Color(0xff505050)),)

            ],
          ),
        ),
      ),
    );
  }
}
