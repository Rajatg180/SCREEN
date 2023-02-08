
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
           child: Column(
            children: [
              Container(
                 width: double.infinity,
                 height: MediaQuery.of(context).size.height*0.15,
                child: Image.asset('assets/dsp.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.15,
              ),
              Container(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Hello Kumar Kailas Kapoor, Welcome Back !',
                    style: TextStyle(
                      color: Colors.grey,  
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.07,
                padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Row(
                  children: [
                     Container(
                      width: MediaQuery.of(context).size.width*0.47,
                      padding: EdgeInsets.all(8),
                       decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5)),
                       ),
                       child: Text(
                        textAlign: TextAlign.center,
                        'USE PIN',
                        style: TextStyle(color: Colors.white),
                       ),
                     ),
                      Container(
                      width: MediaQuery.of(context).size.width*0.47,
                      padding: EdgeInsets.all(8),
                       decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                       ),
                       child: Text(
                        textAlign: TextAlign.center,
                        'USE PHONE LOCK',
                        style: TextStyle(color: Colors.blue),
                       ),
                     ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.1,
                child: Center(
                  child: Text(
                     'Please enter your PIN to proceed',
                     style: TextStyle(
                      color: Colors.grey
                     ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.25),
                width: double.infinity,
                height: MediaQuery.of(context).size.width*0.20,
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                           inactiveColor: Colors.grey,
                        ),
                  cursorColor: Colors.black,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: false,
                  keyboardType: TextInputType.number,      
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.width*0.15,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text('Forgot PIN',style: TextStyle(color: Colors.blue),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 5,right: 5),
                      child: Text("|",style: TextStyle(color: Colors.blue),),
                    ),
                    Container(
                      child: Text('Sign in as different User',style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width*0.30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text('Explore our schemes',style: TextStyle(color: Color.fromARGB(255, 46, 220, 78),decoration: TextDecoration.underline), ),
                    ),
                    Container(
                      child: Text('Learn to invest',style: TextStyle(color: Color.fromARGB(255, 46, 220, 78),decoration: TextDecoration.underline), ),
                    ),
                  ],
                ),
              ),
            ],
           ),
      ),
    );
  }
}