import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class CountryScreen extends StatefulWidget {
  CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  int selectedCountry = -1;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Country"),
              Spacing.y(5),
              Stack(
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 75,
                    width: SizeConfig.widthMultiplier * 85,
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedCountry = index;
                            });
                          },
                          child: Container(
                            height: SizeConfig.heightMultiplier * 8,
                            width: SizeConfig.widthMultiplier * 92,
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 3),
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.heightMultiplier * 3),
                            decoration: BoxDecoration(
                              color: selectedCountry == index
                                  ? Colors.white10
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(14),
                              border: Border.all(
                                  color: selectedCountry == index
                                      ? Colors.white38
                                      : Colors.white24),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: SizeConfig.heightMultiplier * 3.5,
                                  width: SizeConfig.widthMultiplier * 7,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primaryClr),
                                ),
                                Spacing.x(3),
                                Text(
                                  "Indonesia",
                                  style: textTheme.bodySmall!
                                      .copyWith(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(.8),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              CustomButton(
                title: "Next Step",
                onTap: () {},
              ),
              Spacing.y(2)
            ],
          ),
        ),
      ),
    );
  }
}
