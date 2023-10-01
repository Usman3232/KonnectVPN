import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';

import 'package:konnekt_vpn/constants/icons.dart';

import 'package:konnekt_vpn/controllers/device.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/dialogs/miner_detail.dart';
import 'package:konnekt_vpn/views/pages/miners/miners.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';

import 'components/device_button.dart';
import 'components/tile.dart';

class DeviceScreen extends StatelessWidget {
  DeviceScreen({super.key});

  final cont = Get.put(DeviceCont());

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: GlassBackground(
          inAsyncCall: cont.isBlur.value,
          child: Background(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                children: [
                  Spacing.y(6),
                  const CustomAppbar(title: "Devices"),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "10",
                          style: textTheme.headlineLarge!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 6.4),
                        ),
                        Text(
                          "Device Total",
                          style: textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryClr),
                        ),
                        Spacing.y(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              2,
                              (index) => InkWell(
                                onTap: () {},
                                child: Container(
                                  height: SizeConfig.heightMultiplier * 5,
                                  width: SizeConfig.widthMultiplier * 42,
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white24),
                                    borderRadius: BorderRadius.circular(62),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height:
                                            SizeConfig.heightMultiplier * 4.5,
                                        width: SizeConfig.widthMultiplier * 9,
                                        margin: EdgeInsets.only(
                                            right:
                                                SizeConfig.widthMultiplier * 3),
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white10),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "04",
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Text(
                                        "Device On",
                                        style: textTheme.displaySmall!.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    1.05,
                                            color: Colors.white54),
                                      ),
                                      Spacing.x(8),
                                      Image.asset(
                                        AppIcons.power,
                                        height:
                                            SizeConfig.imageSizeMultiplier * 5,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacing.y(5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Device Model",
                            style: textTheme.bodySmall!
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ),
                        Spacing.y(1.5),
                        Stack(
                          children: [
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 54.5,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return DeviceModelTile(
                                    onTap: () {
                                      Get.dialog(
                                        const MinersDetailDialog(),
                                        barrierColor: Colors.transparent,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              bottom: SizeConfig.heightMultiplier * 2,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black,
                                      spreadRadius: 30,
                                      blurRadius: 45,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DeviceButton(
                                      title: "Add Device",
                                      isBorder: true,
                                      onTap: () {
                                        Get.to(() => MinerScreen());
                                      },
                                    ),
                                    DeviceButton(
                                      title: "Buy Devices",
                                      onTap: () {
                                        Get.to(() => MinerScreen());
                                      },
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
