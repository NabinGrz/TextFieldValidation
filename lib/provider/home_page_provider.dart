import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  bool emailIsValid = false;
  bool passwordIsValid = false;

  String emailErrorMessage = "";
  String passwordErrorMessage = "";

  void emailValidation(String email) {
    if (email.isEmpty) {
      //check if email is empty
      emailIsValid = false;
      emailErrorMessage = "Email cannot be empty";
      notifyListeners();
    } else {
      if (!EmailValidator.validate(email)) {
        //check if email is valid
        emailIsValid = false;
        emailErrorMessage = "Please enter valid email address";
        notifyListeners();
      } else {
        emailIsValid = true;
        emailErrorMessage = "";
        notifyListeners();
      }
    }
  }

  void passwordValidation(String password) {
    if (password.isEmpty) {
      //check if password is empty
      passwordIsValid = false;
      passwordErrorMessage = "Password cannot be empty";
      notifyListeners();
    } else {
      if (password.length < 8) {
        //check if password is less than 8 lengtth
        passwordIsValid = false;
        passwordErrorMessage = "Password must be of 7 character";
        notifyListeners();
      } else {
        passwordIsValid = true;
        passwordErrorMessage = "";
        notifyListeners();
      }
    }
  }
}
