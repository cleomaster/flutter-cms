import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_AddressDetails.dart';

class RegistrationPage_PersonalInformation extends StatefulWidget {
  const RegistrationPage_PersonalInformation({Key? key}) : super(key: key);

  @override
  State<RegistrationPage_PersonalInformation> createState() =>
      _RegistrationPage_PersonalInformationState();
}

class _RegistrationPage_PersonalInformationState
    extends State<RegistrationPage_PersonalInformation> {
  int _selectedRadio = 0;
  String _selectedOption = "Option 1";

  void _handleRadioValueChange(value) {
    setState(() {
      _selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 35),
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Personal Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'CNIC',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'DOB',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Gender"),
              Row(
                children: [
                  Radio(
                      value: 0,
                      groupValue: _selectedRadio,
                      onChanged: _handleRadioValueChange),
                  Text("Male"),
                  Radio(
                      value: 1,
                      groupValue: _selectedRadio,
                      onChanged: _handleRadioValueChange),
                  Text("Female"),
                ],
              ),
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
                      "Select Domicile",
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
                      _selectedOption = newValue.toString();
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'Father Name',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'Father CNIC',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegistrationPage_AddressDetails();
                        }))
                      },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff009633),
                  ),
                  child: const Text(
                    "Save & Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
