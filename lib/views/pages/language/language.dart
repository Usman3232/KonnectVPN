import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  List<String> languageTitle = ["English", "Chinese", "Bahasa"];
  int selectedLanguage = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.y(6),
              const CustomAppbar(title: "Language"),
              Spacing.y(5),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      3,
                      (index) => InkWell(
                        onTap: () {
                          setState(() {
                            selectedLanguage = index;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: SizeConfig.heightMultiplier * 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                languageTitle[index],
                                style: textTheme.bodyMedium!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: SizeConfig.heightMultiplier * 2.5,
                                width: SizeConfig.widthMultiplier * 5,
                                padding: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: selectedLanguage == index
                                          ? AppColors.primaryClr
                                          : Colors.white38),
                                ),
                                alignment: Alignment.center,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: selectedLanguage == index
                                          ? AppColors.primaryClr
                                          : Colors.white38),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Save",
                  isShadow: false,
                  onTap: () {},
                ),
              ),
              Spacing.y(2)
            ],
          ),
        ),
      ),
    );
  }
}
