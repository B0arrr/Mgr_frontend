import 'package:mgr_frontend/src/core/i18n/l10n.dart';

String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return I18n().validator_name;
  } else if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
    return I18n().validator_nameOnlyLetters;
  }
  return null;
}

String? validateSurname(String? value) {
  if (value == null || value.isEmpty) {
    return I18n().validator_surname;
  } else if (!RegExp(r"^[a-zA-Z]+$").hasMatch(value)) {
    return I18n().validator_surnameOnlyLetters;
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return I18n().validator_email;
  } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
    return I18n().validator_emailValid;
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return I18n().validator_password;
  } else if (value.length < 8) {
    return I18n().validator_passwordLength;
  } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
    return I18n().validator_passwordUppercase;
  } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(value)) {
    return I18n().validator_passwordLowercase;
  } else if (!RegExp(r'^(?=.*\d)').hasMatch(value)) {
    return I18n().validator_passwordNumber;
  } else if (!RegExp(r'^(?=.*[@$!%*?&])').hasMatch(value)) {
    return I18n().validator_passwordSpecialCharacter;
  }
  return null;
}