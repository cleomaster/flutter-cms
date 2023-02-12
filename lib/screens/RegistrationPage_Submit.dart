import 'package:flutter/material.dart';

class RegistrationPage_Submit extends StatefulWidget {
  const RegistrationPage_Submit({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_Submit> createState() => _RegistrationPage_SubmitState();
}

class _RegistrationPage_SubmitState extends State<RegistrationPage_Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 35),
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Confirm Registration Fees",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text("Download Challan"),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff009633),
                    ),
                    onPressed: () => {},
                    child: Text("Download", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),)
                ),
                SizedBox(height: 20,),
                Text("Upload Challan"),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff009633),
                    ),
                    onPressed: () => {},
                    child: Text("Upload", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),)
                ),
                SizedBox(height: 30,),
                TextButton(onPressed: () => {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff009633),
                    ),
                    child: Text("Submit", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),)
                ),
              ],
            ),
          ),
        )
    );
  }
}
