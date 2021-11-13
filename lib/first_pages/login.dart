
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gummad_store/model/profile.dart';
import 'package:gummad_store/pages/home_pages.dart';



class LoginPage extends StatefulWidget {
  static const routeName = '/Login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  Profile profile = Profile(phone: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if(snapshot.hasError){
            return Scaffold(
              appBar: AppBar(
                title: Text("Error",style: TextStyle(color: Colors.red,fontWeight:FontWeight.bold),),
              ),
              body: Center(child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              appBar: AppBar(
                title: Text("LOGIN",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              ),
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formkey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Phone Number", style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold),),
                          TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Please enter your number!"),
                              EmailValidator(errorText: "Invalid number format!")
                            ]),
                            onSaved: (String? phone) {
                              profile.phone = phone!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("Password", style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold)),
                          TextFormField(
                            validator: RequiredValidator(errorText: "Please enter your password!"),
                            obscureText: true,
                            onSaved: (String? password) {
                              profile.password = password!;
                            },
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Text("Submit",style: TextStyle(fontSize: 20)),
                              onPressed: () async{
                                if (formkey.currentState!.validate()) {
                                  formkey.currentState?.save();
                                  try{
                                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                                        email: profile.phone,
                                        password: profile.password)
                                        .then((value){
                                      formkey.currentState!.reset();
                                      Navigator.pushReplacement(context,
                                          MaterialPageRoute(builder: (context){
                                            return Homegummud();
                                          }));
                                    });
                                  }on FirebaseAuthException catch(e){
                                    Fluttertoast.showToast(
                                        msg: e.message!,
                                        gravity: ToastGravity.CENTER
                                    );
                                  }
                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
