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

  /// `Addresses Management`
  String get root_list_item_addressesManagement {
    return Intl.message(
      'Addresses Management',
      name: 'root_list_item_addressesManagement',
      desc: '',
      args: [],
    );
  }

  /// `Company Management`
  String get root_list_item_companyManagement {
    return Intl.message(
      'Company Management',
      name: 'root_list_item_companyManagement',
      desc: '',
      args: [],
    );
  }

  /// `Department Management`
  String get root_list_item_departmentManagement {
    return Intl.message(
      'Department Management',
      name: 'root_list_item_departmentManagement',
      desc: '',
      args: [],
    );
  }

  /// `Employment Management`
  String get root_list_item_employmentManagement {
    return Intl.message(
      'Employment Management',
      name: 'root_list_item_employmentManagement',
      desc: '',
      args: [],
    );
  }

  /// `Position Management`
  String get root_list_item_positionManagement {
    return Intl.message(
      'Position Management',
      name: 'root_list_item_positionManagement',
      desc: '',
      args: [],
    );
  }

  /// `User Management`
  String get root_list_item_userManagement {
    return Intl.message(
      'User Management',
      name: 'root_list_item_userManagement',
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

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
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

  /// `Address List`
  String get address_management_title {
    return Intl.message(
      'Address List',
      name: 'address_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get address_management_addButton {
    return Intl.message(
      'Add Address',
      name: 'address_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get address_management_alert_dialog_street {
    return Intl.message(
      'Street',
      name: 'address_management_alert_dialog_street',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get address_management_alert_dialog_city {
    return Intl.message(
      'City',
      name: 'address_management_alert_dialog_city',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get address_management_alert_dialog_state {
    return Intl.message(
      'State',
      name: 'address_management_alert_dialog_state',
      desc: '',
      args: [],
    );
  }

  /// `ZIP Code`
  String get address_management_alert_dialog_zipCode {
    return Intl.message(
      'ZIP Code',
      name: 'address_management_alert_dialog_zipCode',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get address_management_alert_dialog_country {
    return Intl.message(
      'Country',
      name: 'address_management_alert_dialog_country',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get address_management_alert_dialog_add_title {
    return Intl.message(
      'Add Address',
      name: 'address_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Address`
  String get address_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Address',
      name: 'address_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `Company List`
  String get company_management_title {
    return Intl.message(
      'Company List',
      name: 'company_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Company`
  String get company_management_addButton {
    return Intl.message(
      'Add Company',
      name: 'company_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get company_management_alert_dialog_name {
    return Intl.message(
      'Name',
      name: 'company_management_alert_dialog_name',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get company_management_alert_dialog_address {
    return Intl.message(
      'Address',
      name: 'company_management_alert_dialog_address',
      desc: '',
      args: [],
    );
  }

  /// `Add Company`
  String get company_management_alert_dialog_add_title {
    return Intl.message(
      'Add Company',
      name: 'company_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Company`
  String get company_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Company',
      name: 'company_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `Department List`
  String get department_management_title {
    return Intl.message(
      'Department List',
      name: 'department_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Department`
  String get department_management_addButton {
    return Intl.message(
      'Add Department',
      name: 'department_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get department_management_alert_dialog_name {
    return Intl.message(
      'Name',
      name: 'department_management_alert_dialog_name',
      desc: '',
      args: [],
    );
  }

  /// `Add Department`
  String get department_management_alert_dialog_add_title {
    return Intl.message(
      'Add Department',
      name: 'department_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Department`
  String get department_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Department',
      name: 'department_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `Employment List`
  String get employment_management_title {
    return Intl.message(
      'Employment List',
      name: 'employment_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Employment`
  String get employment_management_addButton {
    return Intl.message(
      'Add Employment',
      name: 'employment_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get employment_management_alert_dialog_name {
    return Intl.message(
      'Name',
      name: 'employment_management_alert_dialog_name',
      desc: '',
      args: [],
    );
  }

  /// `Max Hours Per Day`
  String get employment_management_alert_dialog_max_hours_per_day {
    return Intl.message(
      'Max Hours Per Day',
      name: 'employment_management_alert_dialog_max_hours_per_day',
      desc: '',
      args: [],
    );
  }

  /// `Max Hours Per Week`
  String get employment_management_alert_dialog_max_hours_per_week {
    return Intl.message(
      'Max Hours Per Week',
      name: 'employment_management_alert_dialog_max_hours_per_week',
      desc: '',
      args: [],
    );
  }

  /// `Add Employment`
  String get employment_management_alert_dialog_add_title {
    return Intl.message(
      'Add Employment',
      name: 'employment_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Employment`
  String get employment_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Employment',
      name: 'employment_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `Position List`
  String get position_management_title {
    return Intl.message(
      'Position List',
      name: 'position_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Position`
  String get position_management_addButton {
    return Intl.message(
      'Add Position',
      name: 'position_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get position_management_alert_dialog_name {
    return Intl.message(
      'Name',
      name: 'position_management_alert_dialog_name',
      desc: '',
      args: [],
    );
  }

  /// `Add Position`
  String get position_management_alert_dialog_add_title {
    return Intl.message(
      'Add Position',
      name: 'position_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Position`
  String get position_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Position',
      name: 'position_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `User List`
  String get user_management_title {
    return Intl.message(
      'User List',
      name: 'user_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add User`
  String get user_management_addButton {
    return Intl.message(
      'Add User',
      name: 'user_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get user_management_alert_dialog_firstName {
    return Intl.message(
      'First Name',
      name: 'user_management_alert_dialog_firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get user_management_alert_dialog_lastName {
    return Intl.message(
      'Last Name',
      name: 'user_management_alert_dialog_lastName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get user_management_alert_dialog_email {
    return Intl.message(
      'Email',
      name: 'user_management_alert_dialog_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get user_management_alert_dialog_password {
    return Intl.message(
      'Password',
      name: 'user_management_alert_dialog_password',
      desc: '',
      args: [],
    );
  }

  /// `Add/Edit Addresses`
  String get user_management_alert_dialog_addresses {
    return Intl.message(
      'Add/Edit Addresses',
      name: 'user_management_alert_dialog_addresses',
      desc: '',
      args: [],
    );
  }

  /// `Add/Edit Employment`
  String get user_management_alert_dialog_employments {
    return Intl.message(
      'Add/Edit Employment',
      name: 'user_management_alert_dialog_employments',
      desc: '',
      args: [],
    );
  }

  /// `Add/Edit Managed Users`
  String get user_management_alert_dialog_managed_users {
    return Intl.message(
      'Add/Edit Managed Users',
      name: 'user_management_alert_dialog_managed_users',
      desc: '',
      args: [],
    );
  }

  /// `Add/Edit Roles`
  String get user_management_alert_dialog_roles {
    return Intl.message(
      'Add/Edit Roles',
      name: 'user_management_alert_dialog_roles',
      desc: '',
      args: [],
    );
  }

  /// `Add User`
  String get user_management_alert_dialog_add_title {
    return Intl.message(
      'Add User',
      name: 'user_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit User`
  String get user_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit User',
      name: 'user_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `User Address List`
  String get user_address_management_title {
    return Intl.message(
      'User Address List',
      name: 'user_address_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get user_address_management_addButton {
    return Intl.message(
      'Add Address',
      name: 'user_address_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get user_address_management_alert_dialog_address {
    return Intl.message(
      'Address',
      name: 'user_address_management_alert_dialog_address',
      desc: '',
      args: [],
    );
  }

  /// `Is Remote`
  String get user_address_management_alert_dialog_remote_checkbox {
    return Intl.message(
      'Is Remote',
      name: 'user_address_management_alert_dialog_remote_checkbox',
      desc: '',
      args: [],
    );
  }

  /// `Add User Addresses`
  String get user_address_management_alert_dialog_add_title {
    return Intl.message(
      'Add User Addresses',
      name: 'user_address_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit User Addresses`
  String get user_address_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit User Addresses',
      name: 'user_address_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `User Employment List`
  String get user_employment_management_title {
    return Intl.message(
      'User Employment List',
      name: 'user_employment_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Employment`
  String get user_employment_management_addButton {
    return Intl.message(
      'Add Employment',
      name: 'user_employment_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Employment`
  String get user_employment_management_alert_dialog_employment {
    return Intl.message(
      'Employment',
      name: 'user_employment_management_alert_dialog_employment',
      desc: '',
      args: [],
    );
  }

  /// `Company`
  String get user_employment_management_alert_dialog_company {
    return Intl.message(
      'Company',
      name: 'user_employment_management_alert_dialog_company',
      desc: '',
      args: [],
    );
  }

  /// `Department`
  String get user_employment_management_alert_dialog_department {
    return Intl.message(
      'Department',
      name: 'user_employment_management_alert_dialog_department',
      desc: '',
      args: [],
    );
  }

  /// `Position`
  String get user_employment_management_alert_dialog_position {
    return Intl.message(
      'Position',
      name: 'user_employment_management_alert_dialog_position',
      desc: '',
      args: [],
    );
  }

  /// `Starting Date`
  String get user_employment_management_alert_dialog_starting_date {
    return Intl.message(
      'Starting Date',
      name: 'user_employment_management_alert_dialog_starting_date',
      desc: '',
      args: [],
    );
  }

  /// `Ending Date`
  String get user_employment_management_alert_dialog_ending_date {
    return Intl.message(
      'Ending Date',
      name: 'user_employment_management_alert_dialog_ending_date',
      desc: '',
      args: [],
    );
  }

  /// `Add User Employment`
  String get user_employment_management_alert_dialog_add_title {
    return Intl.message(
      'Add User Employment',
      name: 'user_employment_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit User Employment`
  String get user_employment_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit User Employment',
      name: 'user_employment_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `User Manager List`
  String get user_manager_management_title {
    return Intl.message(
      'User Manager List',
      name: 'user_manager_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Managed User`
  String get user_manager_management_addButton {
    return Intl.message(
      'Add Managed User',
      name: 'user_manager_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user_manager_management_alert_dialog_user {
    return Intl.message(
      'User',
      name: 'user_manager_management_alert_dialog_user',
      desc: '',
      args: [],
    );
  }

  /// `Add Managed User`
  String get user_manager_management_alert_dialog_add_title {
    return Intl.message(
      'Add Managed User',
      name: 'user_manager_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Managed User`
  String get user_manager_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Managed User',
      name: 'user_manager_management_alert_dialog_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `User Role List`
  String get user_role_management_title {
    return Intl.message(
      'User Role List',
      name: 'user_role_management_title',
      desc: '',
      args: [],
    );
  }

  /// `Add Role`
  String get user_role_management_addButton {
    return Intl.message(
      'Add Role',
      name: 'user_role_management_addButton',
      desc: '',
      args: [],
    );
  }

  /// `Role`
  String get user_role_management_alert_dialog_name {
    return Intl.message(
      'Role',
      name: 'user_role_management_alert_dialog_name',
      desc: '',
      args: [],
    );
  }

  /// `Add Role`
  String get user_role_management_alert_dialog_add_title {
    return Intl.message(
      'Add Role',
      name: 'user_role_management_alert_dialog_add_title',
      desc: '',
      args: [],
    );
  }

  /// `Edit Role`
  String get user_role_management_alert_dialog_edit_title {
    return Intl.message(
      'Edit Role',
      name: 'user_role_management_alert_dialog_edit_title',
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
