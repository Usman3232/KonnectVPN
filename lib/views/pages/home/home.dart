import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/controllers/drawer.dart';
import 'package:konnekt_vpn/controllers/home.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/bottom%20sheets/kpn.dart';
import 'package:konnekt_vpn/views/pages/home/components/background.dart';
import 'package:konnekt_vpn/views/pages/home/components/custom_shape_button.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';
import '../../../utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeCont = Get.put(HomeCont());
  final cont = Get.find<DrawerCont>();

  List<String> homeTypeTitle = ["Susbcription", "Miners"];
  List<String> homeTypeIcons = [AppIcons.subcription, AppIcons.miner];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Obx(
        () => GlassBackground(
          inAsyncCall: homeCont.isBlur.value,
          child: HomeBackground(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacing.y(6),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              cont.toggleDrawer();
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 4.5,
                              width: SizeConfig.widthMultiplier * 10,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white10),
                              child: Image.asset(AppIcons.menu,
                                  height: SizeConfig.imageSizeMultiplier * 6),
                            ),
                          ),
                          Spacing.x(34),
                          Image.asset(AppImages.appLogo,
                              height: SizeConfig.imageSizeMultiplier * 8),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: SizeConfig.heightMultiplier * 2.5,
                                width: SizeConfig.widthMultiplier * 11,
                                margin: EdgeInsets.only(
                                    bottom: SizeConfig.heightMultiplier * .5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: AppColors.primaryClr),
                                ),
                                child: Text(
                                  "567",
                                  style: textTheme.headlineLarge!.copyWith(
                                      fontSize: SizeConfig.textMultiplier * 1,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryClr),
                                ),
                              ),
                              Text(
                                "567",
                                style: textTheme.headlineLarge!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * 1,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryClr),
                              ),
                              Text(
                                "1 KPN = 10.000 KNKT",
                                style: textTheme.displaySmall!.copyWith(
                                    fontSize: SizeConfig.textMultiplier * .85,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacing.y(7),
                      Text(
                        "Total Bandwidth Speed",
                        style: textTheme.displaySmall!
                            .copyWith(color: Colors.white54),
                      ),
                      Spacing.y(.5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "71.871",
                            style: textTheme.headlineLarge!.copyWith(
                                fontSize: SizeConfig.textMultiplier * 5.5),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: SizeConfig.heightMultiplier * .9),
                            child: Text(
                              " KNKT/m",
                              style: textTheme.headlineMedium!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Spacing.y(6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            2,
                            (index) => GestureDetector(
                              onTap: () {
                                if (index == 0) {
                                  Get.bottomSheet(KpnTypeBottomSheet(),
                                      // isDismissible: false,
                                      barrierColor: Colors.transparent,
                                      isScrollControlled: true);
                                }
                              },
                              child: Container(
                                height: SizeConfig.heightMultiplier * 7,
                                width: SizeConfig.widthMultiplier * 45,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: const Color(0xff1E1E1E),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: SizeConfig.heightMultiplier * 6,
                                      width: SizeConfig.widthMultiplier * 15,
                                      margin: EdgeInsets.only(
                                          right:
                                              SizeConfig.widthMultiplier * 1),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff343434),
                                      ),
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        homeTypeIcons[index],
                                        height:
                                            SizeConfig.imageSizeMultiplier * 6,
                                      ),
                                    ),
                                    Text(
                                      homeTypeTitle[index],
                                      style: textTheme.displaySmall!.copyWith(
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(child: CustomShapeButton())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
