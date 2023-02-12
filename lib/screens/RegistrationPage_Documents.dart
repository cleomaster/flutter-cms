import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_ProgramChoices.dart';

class RegistrationPage_Documents extends StatefulWidget {
  const RegistrationPage_Documents({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_Documents> createState() => _RegistrationPage_DocumentsState();
}

class _RegistrationPage_DocumentsState extends State<RegistrationPage_Documents> {
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
                "Documents Upload",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text("Upload Photo"),
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
              SizedBox(height: 20,),
              Text("SSC / O - Levels Certificate"),
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
              SizedBox(height: 20,),
              Text("HSSC / A - Levels Certificate"),
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
              TextButton( onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return RegistrationPage_ProgramChoices();
                    }))
              },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff009633),
                  ),
                  child: Text("Save & Continue", style: TextStyle(
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
