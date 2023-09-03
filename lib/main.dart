import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/email_check.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/forgot.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/new_password.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/verification_process.dart';
import 'package:konnekt_vpn/views/pages/auth/login/login.dart';
import 'package:konnekt_vpn/views/pages/auth/pin/pin.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/sign_up.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/country.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/verification.dart';
import 'package:konnekt_vpn/views/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);

            return GetMaterialApp(
              theme: ThemeData(
                fontFamily: 'PlusJakartaSans',
                colorScheme: ColorScheme.light(primary: AppColors.primaryClr),
                scaffoldBackgroundColor: Colors.black,
              ),
              debugShowCheckedModeBanner: false,
              home: VerificationDetailScreen(),
            );
          },
        );
      },
    );
  }
}
