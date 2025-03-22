// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I18n {
  I18n();

  static I18n? _current;

  static I18n get current {
    assert(_current != null,
        'No instance of I18n was loaded. Try to initialize the I18n delegate before accessing I18n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18n();
      I18n._current = instance;

      return instance;
    });
  }

  static I18n of(BuildContext context) {
    final instance = I18n.maybeOf(context);
    assert(instance != null,
        'No instance of I18n present in the widget tree. Did you add I18n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18n? maybeOf(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  /// `Login`
  String get login_title {
    return Intl.message(
      'Login',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Let's continue where we left off.`
  String get login_subtitle {
    return Intl.message(
      'Let\'s continue where we left off.',
      name: 'login_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get login_emailLabel {
    return Intl.message(
      'Email',
      name: 'login_emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Ex: KpNqg@example.com`
  String get login_emailHint {
    return Intl.message(
      'Ex: KpNqg@example.com',
      name: 'login_emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_passwordLabel {
    return Intl.message(
      'Password',
      name: 'login_passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `************`
  String get login_passwordHint {
    return Intl.message(
      '************',
      name: 'login_passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get login_forgotPasswordLabel {
    return Intl.message(
      'Forgot password?',
      name: 'login_forgotPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get login_googleBtnLabel {
    return Intl.message(
      'Sign in with Google',
      name: 'login_googleBtnLabel',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get login_appleBtnLabel {
    return Intl.message(
      'Sign in with Apple',
      name: 'login_appleBtnLabel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_submitBtnLabel {
    return Intl.message(
      'Login',
      name: 'login_submitBtnLabel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get root_home {
    return Intl.message(
      'Home',
      name: 'root_home',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get root_settings {
    return Intl.message(
      'Settings',
      name: 'root_settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get root_profile {
    return Intl.message(
      'Profile',
      name: 'root_profile',
      desc: '',
      args: [],
    );
  }

  /// `Functionalities`
  String get root_list_header {
    return Intl.message(
      'Functionalities',
      name: 'root_list_header',
      desc: '',
      args: [],
    );
  }

  /// `Item 1`
  String get root_list_item1 {
    return Intl.message(
      'Item 1',
      name: 'root_list_item1',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_title {
    return Intl.message(
      'Home',
      name: 'home_title',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_title {
    return Intl.message(
      'Settings',
      name: 'settings_title',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get settings_darkModeTitle {
    return Intl.message(
      'Dark Mode',
      name: 'settings_darkModeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enable dark mode`
  String get settings_darkModeSubtitle {
    return Intl.message(
      'Enable dark mode',
      name: 'settings_darkModeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settings_languageTitle {
    return Intl.message(
      'Language',
      name: 'settings_languageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select your language`
  String get settings_languageSubtitle {
    return Intl.message(
      'Select your language',
      name: 'settings_languageSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get settings_en {
    return Intl.message(
      'English',
      name: 'settings_en',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile_title {
    return Intl.message(
      'Profile',
      name: 'profile_title',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get profile_firstNameLabel {
    return Intl.message(
      'First Name',
      name: 'profile_firstNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `John`
  String get profile_firstNameHint {
    return Intl.message(
      'John',
      name: 'profile_firstNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get profile_lastNameLabel {
    return Intl.message(
      'Last Name',
      name: 'profile_lastNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Doe`
  String get profile_lastNameHint {
    return Intl.message(
      'Doe',
      name: 'profile_lastNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get profile_emailLabel {
    return Intl.message(
      'Email',
      name: 'profile_emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Ex: KpNqg@example.com`
  String get profile_emailHint {
    return Intl.message(
      'Ex: KpNqg@example.com',
      name: 'profile_emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get profile_passwordLabel {
    return Intl.message(
      'Password',
      name: 'profile_passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `************`
  String get profile_passwordHint {
    return Intl.message(
      '************',
      name: 'profile_passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get profile_changePassword {
    return Intl.message(
      'Change password',
      name: 'profile_changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get profile_submitBtnLabel {
    return Intl.message(
      'Save',
      name: 'profile_submitBtnLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password Change`
  String get password_change_title {
    return Intl.message(
      'Password Change',
      name: 'password_change_title',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_change_passwordLabel {
    return Intl.message(
      'Password',
      name: 'password_change_passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `************`
  String get password_change_passwordHint {
    return Intl.message(
      '************',
      name: 'password_change_passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Repeat Password`
  String get password_change_passwordRepeatedLabel {
    return Intl.message(
      'Repeat Password',
      name: 'password_change_passwordRepeatedLabel',
      desc: '',
      args: [],
    );
  }

  /// `************`
  String get password_change_passwordRepeatedHint {
    return Intl.message(
      '************',
      name: 'password_change_passwordRepeatedHint',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get password_change_submitBtnLabel {
    return Intl.message(
      'Change Password',
      name: 'password_change_submitBtnLabel',
      desc: '',
      args: [],
    );
  }

  /// `First Name is required`
  String get validator_name {
    return Intl.message(
      'First Name is required',
      name: 'validator_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name should contain only letters`
  String get validator_nameOnlyLetters {
    return Intl.message(
      'Last Name should contain only letters',
      name: 'validator_nameOnlyLetters',
      desc: '',
      args: [],
    );
  }

  /// `Last Name is required`
  String get validator_surname {
    return Intl.message(
      'Last Name is required',
      name: 'validator_surname',
      desc: '',
      args: [],
    );
  }

  /// `Last Name should contain only letters`
  String get validator_surnameOnlyLetters {
    return Intl.message(
      'Last Name should contain only letters',
      name: 'validator_surnameOnlyLetters',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get validator_email {
    return Intl.message(
      'Email is required',
      name: 'validator_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address`
  String get validator_emailValid {
    return Intl.message(
      'Enter a valid email address',
      name: 'validator_emailValid',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get validator_password {
    return Intl.message(
      'Password is required',
      name: 'validator_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters long`
  String get validator_passwordLength {
    return Intl.message(
      'Password must be at least 8 characters long',
      name: 'validator_passwordLength',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one uppercase letter`
  String get validator_passwordUppercase {
    return Intl.message(
      'Password must contain at least one uppercase letter',
      name: 'validator_passwordUppercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one lowercase letter`
  String get validator_passwordLowercase {
    return Intl.message(
      'Password must contain at least one lowercase letter',
      name: 'validator_passwordLowercase',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one number`
  String get validator_passwordNumber {
    return Intl.message(
      'Password must contain at least one number',
      name: 'validator_passwordNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least one special character`
  String get validator_passwordSpecialCharacter {
    return Intl.message(
      'Password must contain at least one special character',
      name: 'validator_passwordSpecialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Form successfully submitted!`
  String get form_submitted {
    return Intl.message(
      'Form successfully submitted!',
      name: 'form_submitted',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match!`
  String get form_password_not_match {
    return Intl.message(
      'Passwords do not match!',
      name: 'form_password_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Test`
  String get title {
    return Intl.message(
      'Test',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get loadingDialog_content {
    return Intl.message(
      'Please wait...',
      name: 'loadingDialog_content',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
