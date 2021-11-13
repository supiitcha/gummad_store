import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gummad_store/first_pages/login.dart';
import 'package:gummad_store/first_pages/samak_pages.dart';

class Start extends StatefulWidget {
  static const routeName = '/home';
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GUMMUD STORE', style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        body:Container(
            child: SafeArea(
            child: Center(
            child: Stack(
            children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 50.0),
          child: Column(
            children:  [
              Image.asset("assets/images/90.jpg"),
              Text('GUMMUD STORE',style: TextStyle(fontSize : 30.0,color: Colors.black,fontWeight:FontWeight.bold),),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(onPressed: (){
                  Navigator.pushNamed(context,
                    Samak.routeName,);
                }, icon:Icon(Icons.assignment_ind) ,
                    label: Text('สมัครสมาชิก',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
              ),
          const SizedBox(
            height: 10.0,
          ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(onPressed: (){
                  Navigator.pushNamed(context,
                   LoginPage.routeName,);
                }, icon:Icon(Icons.login) ,
                    label: Text('เข้าสู่ระบบ',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)),
              ),
            ],
          ),
        )
    ]
    )
            )
            )
        )
        );
  }
}
