import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class MinerScreen extends StatefulWidget {
  MinerScreen({super.key});

  @override
  State<MinerScreen> createState() => _MinerScreenState();
}

class _MinerScreenState extends State<MinerScreen> {
  int selectedMiner = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(24),
                  Text(
                    "Miners Detail",
                    style: AppTextStyles.bodyMedium.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  )
                ],
              ),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.heightMultiplier * 2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectedMiner = index;
                              });
                            },
                            child: Container(
                              height: SizeConfig.heightMultiplier * 11,
                              width: SizeConfig.widthMultiplier * 88,
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.widthMultiplier * 3),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white10),
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 72,
                                    width: 72,
                                    margin: EdgeInsets.only(
                                        right: SizeConfig.widthMultiplier * 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.white10),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: SizeConfig.widthMultiplier * 60,
                                        child: Text(
                                          "KP-1000 Dual-band Wireless Gigabit Router",
                                          style: AppTextStyles.bodySmall
                                              .copyWith(
                                                  fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Spacing.y(1),
                                      Text(
                                        "Bandwidth : 14,400 - 20,160 KNKT/day",
                                        style: AppTextStyles.bodyExtraSmall
                                            .copyWith(color: Colors.white38),
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
                    Spacing.y(24),
                    CustomButton(
                      title: "Buy Now",
                      onTap: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
