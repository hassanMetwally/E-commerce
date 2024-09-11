// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
  final List<String> errors = [];

  addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailTextFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordTextFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConfirmPasswordTextFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(text: "Continue", press: () {
              if(_formKey.currentState!.validate()){
                _formKey.currentState!.save();
                setState(() {
                  errors.clear();
                });
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            }),
          ],
        ));
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),

      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          removeError(error: kInvalidEmailError);
          return "";
        } else if (!kEmailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
          removeError(error: kInvalidEmailError);
        } else if (kEmailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
      },
      onSaved: (newValue) => email = newValue,
    );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          removeError(error: kShortPassError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
          removeError(error: kShortPassError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
    );
  }

  TextFormField buildConfirmPasswordTextFormField() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm password",
        hintText: "Re-enter your password",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Lock.svg'),
      ),
      validator: (value) {
        confirmPassword = value;
        if (value!.isEmpty) {
          return "";
        } else if (confirmPassword != password) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
      },
    );
  }
}
