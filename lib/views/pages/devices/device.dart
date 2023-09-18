import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/controllers/device.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/dialogs/miner_detail.dart';
import 'package:konnekt_vpn/views/pages/miners/miners.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/glass_background.dart';

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
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical:
                                            SizeConfig.heightMultiplier * 1.5),
                                    child: InkWell(
                                      onTap: () {
                                        Get.dialog(
                                          MinersDetailDialog(),
                                          barrierColor: Colors.transparent,
                                        );
                                      },
                                      child: Container(
                                        height:
                                            SizeConfig.heightMultiplier * 8.3,
                                        width: SizeConfig.widthMultiplier * 88,
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                SizeConfig.widthMultiplier * 3),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            color:
                                                Colors.white.withOpacity(.07)),
                                        child: Row(
                                          children: [
                                            Container(
                                              height:
                                                  SizeConfig.heightMultiplier *
                                                      5.7,
                                              width:
                                                  SizeConfig.widthMultiplier *
                                                      12.7,
                                              margin: EdgeInsets.only(
                                                  right: SizeConfig
                                                          .widthMultiplier *
                                                      4),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.white
                                                    .withOpacity(.05),
                                              ),
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                AppIcons.power,
                                                height: SizeConfig
                                                        .imageSizeMultiplier *
                                                    6,
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "ID : ",
                                                      style: textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    Text(
                                                      "12EWTU",
                                                      style: textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: AppColors
                                                                  .primaryClr),
                                                    ),
                                                  ],
                                                ),
                                                Spacing.y(1),
                                                Text(
                                                  "192.168.1.1",
                                                  style: textTheme.displaySmall!
                                                      .copyWith(
                                                          color:
                                                              Colors.white38),
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "1 KNKT/m",
                                                  style: textTheme.displaySmall!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                ),
                                                Spacing.y(1),
                                                Text(
                                                  "Aug 19, 2023",
                                                  style: textTheme.displaySmall!
                                                      .copyWith(
                                                          fontSize: SizeConfig
                                                                  .textMultiplier *
                                                              1.05,
                                                          color:
                                                              Colors.white38),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
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

class DeviceButton extends StatelessWidget {
  const DeviceButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.isBorder = false,
    this.isShadow = true,
  }) : super(key: key);
  final VoidCallback onTap;
  final bool isBorder;
  final String title;
  final bool isShadow;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: isBorder ? Colors.black : null,
        gradient: isBorder
            ? null
            : const LinearGradient(
                stops: [2, 1],
                colors: [Color(0xff4CC9A7), Color(0xff0158F4)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
            color: isBorder ? AppColors.primaryClr : Colors.transparent,
            width: isBorder ? 1 : 0),
      ),
      child: MaterialButton(
        height: SizeConfig.heightMultiplier * 6,
        minWidth: SizeConfig.widthMultiplier * 42,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 1.2,
              color: isBorder ? AppColors.primaryClr : Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
