import 'package:flutter/material.dart';
import 'package:gummad_store/pages/home_pages.dart';

class WelcomeGummud extends StatefulWidget {
  static const routeName = '/welcome';
  const WelcomeGummud({Key? key}) : super(key: key);

  @override
  _WelcomeGummudState createState() => _WelcomeGummudState();
}

class _WelcomeGummudState extends State<WelcomeGummud> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('GUMMUD STORE',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),)
      ),
       body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/02.jpg'),
            fit: BoxFit.fill
    )
    ),
            child: SafeArea(
            child: Center(
            child: Stack(
            children: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              const SizedBox(
                height: 145.0,
              ),
              const SizedBox(
                height: 145.0,
              ),
                Text('WELCOME TO GUMMUD STORE',style: TextStyle(fontSize : 30.0,color: Colors.white,fontWeight:FontWeight.bold),),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical:0.0,horizontal: 100.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,
                          Homegummud.routeName,);
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 70.0, // ขนาดไอคอน
                        color: Colors.white,
                      )
                    ),
                ),
            ]
            )
            )
    ]
    )
    )
    )
    )
    );
  }
}
