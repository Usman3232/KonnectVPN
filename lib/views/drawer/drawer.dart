import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/drawer.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/about%20us/about_us.dart';
import 'package:konnekt_vpn/views/pages/auth/login/login.dart';
import 'package:konnekt_vpn/views/pages/calculator/calculator.dart';
import 'package:konnekt_vpn/views/pages/home/home.dart';
import 'package:konnekt_vpn/views/pages/levels/levels.dart';
import 'package:konnekt_vpn/views/pages/notification/notification.dart';
import 'package:konnekt_vpn/views/pages/referral/referrral.dart';
import 'package:konnekt_vpn/views/pages/setting/setting.dart';
import 'package:konnekt_vpn/views/pages/subcription/subcription.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import '../../../utils/size_config.dart';
import 'components/drawer_tile.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final cont = Get.put(DrawerCont());

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: cont.zoomDrawerController,
      menuScreen: MenuDrawer(),
      mainScreen: HomeScreen(),
      borderRadius: 30,
      shadowLayer1Color: Colors.transparent,
      shadowLayer2Color: const Color(0xff121615),
      showShadow: true,
      mainScreenScale: .14,
      angle: 0,
      menuScreenWidth: SizeConfig.widthMultiplier * 100,
      style: DrawerStyle.defaultStyle,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.67,
    );
  }
}

class MenuDrawer extends StatelessWidget {
  MenuDrawer({
    super.key,
  });

  final cont = Get.find<DrawerCont>();

  List<String> drawerTitle = [
    "Home",
    "Notification",
    "Subscription",
    "KPN Miners",
    "Calculator",
    "Referrals",
    "Levels",
    "Settings",
    "About Us"
  ];
  List<String> drawerIcons = [
    AppIcons.home,
    AppIcons.bell,
    AppIcons.subcription,
    AppIcons.miner,
    AppIcons.calculator,
    AppIcons.referral,
    AppIcons.level,
    AppIcons.setting,
    AppIcons.info,
  ];
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 10,
              left: SizeConfig.widthMultiplier * 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: SizeConfig.heightMultiplier * 7,
                    width: SizeConfig.widthMultiplier * 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 4, color: Colors.white10),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade900,
                      backgroundImage:
                          const AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                  Spacing.x(30),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppIcons.crownBasic,
                      height: SizeConfig.imageSizeMultiplier * 5.5,
                    ),
                  )
                ],
              ),
              Spacing.y(1),
              Text(
                "6184749169",
                style: textTheme.displaySmall!.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white60),
              ),
              Spacing.y(1),
              Text(
                "Mattie Hardwick",
                style:
                    textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(1),
              Text(
                "Verification Is Denied",
                style:
                    textTheme.displaySmall!.copyWith(color: AppColors.errorClr),
              ),
              Spacing.y(3),
              ...List.generate(
                drawerTitle.length,
                (index) => DrawerTile(
                  title: drawerTitle[index],
                  icons: drawerIcons[index],
                  onTap: () {
                    if (index == 0) {
                      cont.toggleDrawer();
                    }
                    if (index == 1) {
                      Get.to(() => NotificationScreen());
                    }
                    if (index == 2) {
                      Get.to(() => SubcriptionScreen());
                    }
                    if (index == 3) {}
                    if (index == 4) {
                      Get.to(() => CalculatorScreen());
                    }
                    if (index == 5) {
                      Get.to(() => ReferralScreen());
                    }
                    if (index == 6) {
                      Get.to(() => LevelScreen());
                    }
                    if (index == 7) {
                      Get.to(() => SettingScreen());
                    }
                    if (index == 8) {
                      Get.to(() => AboutUsScreen());
                    }
                  },
                ),
              ),
              Spacing.y(5),
              DrawerTile(
                title: "Sign Out",
                isSignOut: true,
                icons: AppIcons.signOut,
                onTap: () {
                  Get.offAll(() => LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
