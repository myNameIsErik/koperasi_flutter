import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:koperasi_flutter/theme.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Container(
          child: Column(
            children: [
              Text(
                'Welcome',
                style: primaryTextStyle.copyWith(
                    fontSize: 28, fontWeight: bold, letterSpacing: 5),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Please enter your data to continue',
                textAlign: TextAlign.center,
                style: subtitleTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: medium,
                    letterSpacing: 4,
                    height: 2),
              )
            ],
          ),
        ),
      );
    }

    Widget logo() {
      return Container(
        margin: EdgeInsets.only(top: 22),
        child: Column(
          children: [
            Image.asset(
              "assets/login.png",
              width: 272,
            ),
            SizedBox(
              height: 33,
            ),
          ],
        ),
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

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(top: 17),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
            text: TextSpan(
              text: 'Don\'t have an account? ',
              style: subtitleTextStyle.copyWith(
                  fontSize: 13, fontWeight: semiBold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Click Here',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: semiBold,
                    color: Colors.blue,
                    // Atau gunakan gaya teks tambahan yang sesuai dengan tautan
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, '/register');
                    },
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
        ]),
      );
    }

    Widget loginButton() {
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
              'Log In',
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
                    logo(),
                    emailInput(),
                    passwordInput(),
                    footer(),
                    loginButton()
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
