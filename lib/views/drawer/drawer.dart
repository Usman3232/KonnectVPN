import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/home.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/home/home.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import '../../../utils/size_config.dart';

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

  List<String> title = [
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
  @override
  Widget build(BuildContext context) {
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
                style: AppTextStyles.bodyExtraSmall.copyWith(
                    fontWeight: FontWeight.w500, color: Colors.white60),
              ),
              Spacing.y(1),
              Text(
                "Mattie Hardwick",
                style: AppTextStyles.bodyLarge
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(1),
              Text(
                "Verification Is Denied",
                style: AppTextStyles.bodyExtraSmall
                    .copyWith(color: AppColors.errorClr),
              ),
              Spacing.y(3),
              ...List.generate(
                title.length,
                (index) => DrawerTile(
                  title: title[index],
                  onTap: () {},
                ),
              ),
              Spacing.y(5),
              DrawerTile(
                title: "Sign Out",
                isSignOut: true,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key,
      required this.title,
      this.isSignOut = false,
      required this.onTap});

  final String title;
  final bool isSignOut;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.7),
        child: Row(
          children: [
            const Icon(
              Icons.house_rounded,
              color: Colors.white,
            ),
            Spacing.x(3),
            Text(
              title,
              style: AppTextStyles.bodySmall.copyWith(
                  fontWeight: FontWeight.w500,
                  color: isSignOut ? Colors.white : Colors.white38),
            )
          ],
        ),
      ),
    );
  }
}
