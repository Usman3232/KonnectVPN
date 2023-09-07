import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../utils/size_config.dart';
import '../../bottom sheets/kpn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
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
                          border: Border.all(color: AppColors.primaryClr),
                        ),
                        child: Text(
                          "567",
                          style: AppTextStyles.bodyExtraSmall.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                      ),
                      Text(
                        "1 KPN = 10.000 KNKT",
                        style: AppTextStyles.bodyExtraSmall.copyWith(
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
                style: AppTextStyles.bodyExtraSmall
                    .copyWith(color: AppColors.textLightClr),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "71.871",
                    style: AppTextStyles.headingLarge
                        .copyWith(fontSize: SizeConfig.textMultiplier * 5.5),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeConfig.heightMultiplier * .9),
                    child: Text(
                      " KNKT/m",
                      style: AppTextStyles.headingMedium
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              Spacing.y(7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(const KpnTypeBottomSheet());
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
                                right: SizeConfig.widthMultiplier * 1),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff343434),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              AppIcons.subcription,
                              height: SizeConfig.imageSizeMultiplier * 7,
                            ),
                          ),
                          Text(
                            "Susbcription",
                            style: AppTextStyles.bodyExtraSmall
                                .copyWith(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                              right: SizeConfig.widthMultiplier * 1),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff343434),
                          ),
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppIcons.miner,
                            height: SizeConfig.imageSizeMultiplier * 7,
                          ),
                        ),
                        Text(
                          "Miners",
                          style: AppTextStyles.bodyExtraSmall
                              .copyWith(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
