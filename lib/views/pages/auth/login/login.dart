import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import 'package:konnekt_vpn/controllers/login.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/drawer/drawer.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/forgot.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/sign_up.dart';
import 'package:konnekt_vpn/views/pages/home/home.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final cont = Get.put(LoginCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacing.y(17),
                  Text(
                    "Welcome",
                    style: textTheme.displayLarge!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  Spacing.y(2),
                  Text(
                    "Protect Your Online Privacy Our VPN app keeps your data secure and your identity anonymous.",
                    style: textTheme.displaySmall!
                        .copyWith(height: 1.9, color: Colors.white38),
                  ),
                  Spacing.y(6),
                  Text("Email", style: textTheme.displaySmall!),
                  Spacing.y(1),
                  AuthTextField(
                      hintText: "Enter your email", controller: cont.email),
                  Text("Password", style: textTheme.displaySmall!),
                  Spacing.y(1),
                  AuthTextField(
                    hintText: "Enter your password",
                    controller: cont.password,
                    isPassword: true,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => ForgotScreen());
                      },
                      child: Text(
                        "Forgot Your password",
                        style: textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.textMultiplier * 1.2,
                            color: Colors.white38),
                      ),
                    ),
                  ),
                  Spacing.y(28),
                  CustomButton(
                    title: "Login",
                    onTap: () {
                      Get.to(() => DrawerScreen());
                    },
                  ),
                  Spacing.y(2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont have an account?   ",
                          style: textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white38)),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: Text(
                          "Sign Up",
                          style: textTheme.displaySmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
