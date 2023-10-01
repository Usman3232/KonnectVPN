import 'package:flutter/material.dart';

import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../../constants/colors.dart';
import '../../../widgets/custom_back_btn.dart';

class CitizenShipScreen extends StatefulWidget {
  const CitizenShipScreen({super.key});

  @override
  State<CitizenShipScreen> createState() => _CitizenShipScreenState();
}

class _CitizenShipScreenState extends State<CitizenShipScreen> {
  int selectedCitizen = -1;
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
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(25.5),
                  Text(
                    "Ciitizenship",
                    style: textTheme.bodyMedium!,
                  )
                ],
              ),
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
                              selectedCitizen = index;
                            });
                          },
                          child: SizedBox(
                            height: SizeConfig.heightMultiplier * 6.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ciitizen",
                                  style: textTheme.bodyMedium!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                Container(
                                  height: SizeConfig.heightMultiplier * 2.5,
                                  width: SizeConfig.widthMultiplier * 5,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: selectedCitizen == index
                                            ? AppColors.primaryClr
                                            : Colors.white38),
                                  ),
                                  alignment: Alignment.center,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    decoration: BoxDecoration(
                                        color: selectedCitizen == index
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
