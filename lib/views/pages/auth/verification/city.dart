import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../../widgets/custom_back_btn.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Padding(
          padding: AppConstants.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(28),
                  Text(
                    "Country",
                    style: AppTextStyles.bodyMedium,
                  )
                ],
              ),
              Spacing.y(5),
              SizedBox(
                height: SizeConfig.heightMultiplier * 72,
                width: SizeConfig.widthMultiplier * 85,
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: SizeConfig.heightMultiplier * 6.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Surabaya",
                            style: AppTextStyles.bodyMedium
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: SizeConfig.heightMultiplier * 2.5,
                            width: SizeConfig.widthMultiplier * 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white38),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Spacing.y(3),
              CustomButton(
                title: "Next Step",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
