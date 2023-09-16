import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/views/drawer/drawer.dart';
import 'package:konnekt_vpn/views/pages/about%20us/about_us.dart';
import 'package:konnekt_vpn/views/pages/account%20activity/account_activity.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/email_check.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/forgot.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/get_started.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/new_password.dart';
import 'package:konnekt_vpn/views/pages/auth/forgot/verification_on_process.dart';
import 'package:konnekt_vpn/views/pages/auth/login/login.dart';
import 'package:konnekt_vpn/views/pages/auth/pin/pin.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/otp.dart';
import 'package:konnekt_vpn/views/pages/auth/sign%20up/sign_up.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/citizenship.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/city.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/country.dart';
import 'package:konnekt_vpn/views/pages/auth/verification/verification.dart';
import 'package:konnekt_vpn/views/pages/auth/choose%20auth/choose_auth.dart';
import 'package:konnekt_vpn/views/pages/balance/balance.dart';
import 'package:konnekt_vpn/views/pages/bandwidth/bandwidth.dart';
import 'package:konnekt_vpn/views/pages/calculator/calculator.dart';
import 'package:konnekt_vpn/views/pages/detail/detail.dart';
import 'package:konnekt_vpn/views/pages/devices/device.dart';
import 'package:konnekt_vpn/views/pages/history/history.dart';
import 'package:konnekt_vpn/views/pages/home/home.dart';
import 'package:konnekt_vpn/views/pages/import/import.dart';
import 'package:konnekt_vpn/views/pages/language/language.dart';
import 'package:konnekt_vpn/views/pages/levels/levels.dart';
import 'package:konnekt_vpn/views/pages/manage%20account/manage_account.dart';
import 'package:konnekt_vpn/views/pages/miner%20detail/miner_detail.dart';
import 'package:konnekt_vpn/views/pages/miners/miners.dart';
import 'package:konnekt_vpn/views/pages/notification/notification.dart';
import 'package:konnekt_vpn/views/pages/payment%20method/payment_method.dart';
import 'package:konnekt_vpn/views/pages/privacy/privacy.dart';
import 'package:konnekt_vpn/views/pages/privacy/privacy_note.dart';
import 'package:konnekt_vpn/views/pages/referral/referrral.dart';
import 'package:konnekt_vpn/views/pages/security/security.dart';
import 'package:konnekt_vpn/views/pages/setting/setting.dart';
import 'package:konnekt_vpn/views/pages/special%20offer/special_offer.dart';
import 'package:konnekt_vpn/views/pages/stacking/stacking.dart';
import 'package:konnekt_vpn/views/pages/subcription/subcription.dart';
import 'package:konnekt_vpn/views/pages/swap/swap.dart';
import 'package:konnekt_vpn/views/pages/transaction%20detail/transaction_detail.dart';
import 'package:konnekt_vpn/views/pages/wallet/wallet.dart';
import 'package:konnekt_vpn/views/skate%20kpn/skate_kpn.dart';

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
              home: LanguageScreen(),
            );
          },
        );
      },
    );
  }
}
