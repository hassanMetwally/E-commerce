// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressTextFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    errors.clear();
                  });
                  //go to OTP screen
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
              })
        ],
      ),
    );
  }

  TextFormField buildFirstNameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "First name",
        hintText: "Enter your first name",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
      },
      onSaved: (newValue) => firstName = newValue,
    );
  }

  TextFormField buildLastNameTextFormField() {
    return TextFormField(
      decoration:  InputDecoration(
        labelText: "Last name",
        hintText: "Enter your Last name",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
      },
      onSaved: (newValue) => lastName = newValue,
    );
  }

  TextFormField buildPhoneNumberTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      onSaved: (newValue) => phoneNumber = newValue,
    );
  }

  TextFormField buildAddressTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        suffixIcon:
        CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      onSaved: (newValue) => address = newValue,
    );
  }
}