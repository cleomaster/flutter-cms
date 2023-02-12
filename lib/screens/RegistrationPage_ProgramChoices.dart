import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_Submit.dart';

class RegistrationPage_ProgramChoices extends StatefulWidget {
  const RegistrationPage_ProgramChoices({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_ProgramChoices> createState() => _RegistrationPage_ProgramChoicesState();
}

class _RegistrationPage_ProgramChoicesState extends State<RegistrationPage_ProgramChoices> {

  String _selectedOption1 = "Option 1";
  String _selectedOption2 = "Option 1";

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
                  "Program Choices",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: null,
                    hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "First Choice",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    items: <String>['Option 1', 'Option 2', 'Option 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedOption1 = newValue.toString();
                      });
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: null,
                    hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Second Choice",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    items: <String>['Option 1', 'Option 2', 'Option 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedOption1 = newValue.toString();
                      });
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: null,
                    hint: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Third Choice",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    items: <String>['Option 1', 'Option 2', 'Option 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedOption1 = newValue.toString();
                      });
                    },
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(height: 10,),
                TextButton( onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return RegistrationPage_Submit();
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
            )
        ),
      ),
    );
  }
}
