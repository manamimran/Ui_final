import 'package:flutter/cupertino.dart';

class ModelClass {
  late String id;
  late String firstname;
  late String lastname;
  late String email;
  late String phone;
  late String password;
  late String confirmpassword;

  ModelClass(
      {
        required this.id,
      required this.firstname,
      required this.lastname,
      required this.email,
      required this.phone,
      required this.password,
      required this.confirmpassword});

  ModelClass.fromMap(Map<String,dynamic> data){
    id = data["ID"] ?? "";
    firstname = data["First name"] ?? "";
    lastname = data["Last name"] ?? "";
    email = data["Email"] ?? "";
    password = data["Password"] ?? "";
    confirmpassword = data["Confirm Password"] ?? "";
  }

  Map<String, dynamic> toMap(){       // hashmap for setting data to firestore
    return {
      "ID" : id,
      "First name" : firstname,
      "Last name" : lastname,
      "Email" : email,
      "Password" : password,
      "Confirm Password": confirmpassword,

    };
  }
}
