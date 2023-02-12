import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_EducationalDetails.dart';

class RegistrationPage_AddressDetails extends StatefulWidget {
  const RegistrationPage_AddressDetails({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_AddressDetails> createState() => _RegistrationPage_AddressDetailsState();
}

class _RegistrationPage_AddressDetailsState extends State<RegistrationPage_AddressDetails> {

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
                "Address Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20,),
              Text("Permanent Address", style: TextStyle(
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
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
                      "City",
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

              SizedBox(height: 30,),
              Text("Father / Guadian Address", style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
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
                      "City",
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
                      _selectedOption2 = newValue.toString();
                    });
                  },
                ),
              ),
              SizedBox(height: 30,),
              TextButton( onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return RegistrationPage_EducationalDetails();
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

