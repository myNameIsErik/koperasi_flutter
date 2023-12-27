import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:koperasi_flutter/theme.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController confirmPasswordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Container(
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: primaryTextStyle.copyWith(
                    fontSize: 28, fontWeight: bold, letterSpacing: 5),
              ),
            ],
          ),
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Name',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          SizedBox(height: 5),
          TextField(
            style: primaryTextStyle,
            cursorColor: primaryColor,
            controller: nameController,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 0, color: primaryColor), // Border bawah saja
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                hintText: 'Enter Your Name',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                    color: subtitleTextColor.withOpacity(0.3)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
          )
        ]),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'E-mail',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          SizedBox(height: 5),
          TextField(
            style: primaryTextStyle,
            cursorColor: primaryColor,
            controller: emailController,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 0, color: primaryColor), // Border bawah saja
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                hintText: 'Enter Your Email',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                    color: subtitleTextColor.withOpacity(0.3)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
          )
        ]),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Phone Number',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          SizedBox(height: 5),
          TextField(
            style: primaryTextStyle,
            cursorColor: primaryColor,
            controller: phoneController,
            keyboardType: TextInputType.phone,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 0, color: primaryColor), // Border bawah saja
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                hintText: 'Enter Your Phone Number',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                    color: subtitleTextColor.withOpacity(0.3)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
          )
        ]),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 17),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Password',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          SizedBox(height: 5),
          TextField(
            style: primaryTextStyle,
            obscureText: true,
            cursorColor: primaryColor,
            controller: passwordController,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 0, color: primaryColor), // Border bawah saja
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                hintText: 'Enter Your Password',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                    color: subtitleTextColor.withOpacity(0.3)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
          )
        ]),
      );
    }

    Widget confirmPasswordInput() {
      return Container(
        margin: EdgeInsets.only(top: 17),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Confirm Password',
            style:
                subtitleTextStyle.copyWith(fontSize: 13, fontWeight: semiBold),
          ),
          SizedBox(height: 5),
          TextField(
            style: primaryTextStyle,
            obscureText: true,
            cursorColor: primaryColor,
            controller: confirmPasswordController,
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 0, color: primaryColor), // Border bawah saja
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: primaryColor), // Border bawah saja
                ),
                hintText: 'Confirm Your Password',
                hintStyle: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                    color: subtitleTextColor.withOpacity(0.3)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
          )
        ]),
      );
    }

    Widget registerButton() {
      return Container(
        height: 48,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
            // onPressed: handleLogin,
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              'Register',
              style: secondaryTextStyle.copyWith(
                  fontSize: 13, fontWeight: semiBold),
            )),
      );
    }

    return Scaffold(
      backgroundColor: secondaryTextColor,
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(builder: (context, Constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: Constraints.maxWidth,
                minHeight: Constraints.maxHeight),
            child: IntrinsicHeight(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 43),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    header(),
                    nameInput(),
                    emailInput(),
                    phoneInput(),
                    passwordInput(),
                    confirmPasswordInput(),
                    registerButton()
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
