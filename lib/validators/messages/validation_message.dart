import 'package:flutter/material.dart';

const String EmailValidationMessage = "Enter a valid email address";

///Şifreniz büyük-küçük harf ve en az 8 karakterden oluşmalıdır.
 String PasswordValidationMessage(int value) =>"Your password must contain uppercase and lowercase letters and a minimum of ${value} characters.";
const String RequiredMessage="Bu Alan Zorunlu!";