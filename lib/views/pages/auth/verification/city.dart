import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  int selectedCity = -1;
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
              const CustomAppbar(title: "City"),
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
                            setState(() {});
                            selectedCity = index;
                          },
                          child: SizedBox(
                            height: SizeConfig.heightMultiplier * 6.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Surabaya",
                                  style: textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  height: SizeConfig.heightMultiplier * 2.5,
                                  width: SizeConfig.widthMultiplier * 5,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: selectedCity == index
                                            ? AppColors.primaryClr
                                            : Colors.white38),
                                  ),
                                  alignment: Alignment.center,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                        color: selectedCity == index
                                            ? AppColors.primaryClr
                                            : Colors.transparent,
                                        shape: BoxShape.circle),
                                  ),
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
