import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_Documents.dart';

class RegistrationPage_EducationalDetails extends StatefulWidget {
  const RegistrationPage_EducationalDetails({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_EducationalDetails> createState() => _RegistrationPage_EducationalDetailsState();
}

class _RegistrationPage_EducationalDetailsState extends State<RegistrationPage_EducationalDetails> {

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
                  "Educational Details",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text("SSC / O - Level Details", style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
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
                        "Select Medium",
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
                        "Select Subjects",
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
                        "Select Passing Out Year",
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
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: 'Total Marks',
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: 'Obtained Marks',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("HSSC / A - Level Details", style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
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
                        "Select Medium",
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
                        "Select Subjects",
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
                        "Select Passing Out Year",
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
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: 'Total Marks',
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: 'Obtained Marks',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                TextButton( onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return RegistrationPage_Documents();
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
