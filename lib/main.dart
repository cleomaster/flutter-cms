import 'package:flutter/material.dart';
import 'package:flutter_cms/screens/RegistrationPage_AddressDetails.dart';
import 'package:flutter_cms/screens/RegistrationPage_Documents.dart';
import 'package:flutter_cms/screens/RegistrationPage_EducationalDetails.dart';
import 'package:flutter_cms/screens/RegistrationPage_PersonalInformation.dart';
import 'package:flutter_cms/screens/RegistrationPage_ProgramChoices.dart';
import 'package:flutter_cms/screens/RegistrationPage_Submit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegistrationPage_PersonalInformation()
    );
  }
}


