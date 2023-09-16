import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/auth_textfield.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class ImportScreen extends StatefulWidget {
  ImportScreen({super.key});

  @override
  State<ImportScreen> createState() => _ImportScreenState();
}

class _ImportScreenState extends State<ImportScreen> {
  TextEditingController nickName = TextEditingController();
  List<String> importTypeList = [
    "Pharse",
    "Keystore",
    "Private Key",
    "Address"
  ];
  int selectedImport = 0;

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
                  Spacing.x(30),
                  Text("Import", style: AppTextStyles.bodyMedium)
                ],
              ),
              Spacing.y(8),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address Nickname",
                      style: AppTextStyles.bodyExtraSmall,
                    ),
                    Spacing.y(1),
                    AuthTextField(hintText: "Nickname", controller: nickName),
                    Spacing.y(2),
                    Container(
                      height: SizeConfig.heightMultiplier * 4.5,
                      width: SizeConfig.widthMultiplier * 88,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * .6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            4,
                            (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  selectedImport = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: SizeConfig.heightMultiplier * 3.6,
                                width: SizeConfig.widthMultiplier * 21,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: selectedImport == index
                                        ? AppColors.primaryClr
                                        : Colors.transparent),
                                child: Text(
                                  importTypeList[index],
                                  style: AppTextStyles.bodyExtraSmall.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      fontWeight: FontWeight.w500,
                                      color: selectedImport == index
                                          ? Colors.white
                                          : Colors.white60),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacing.y(4),
                    Container(
                      height: SizeConfig.heightMultiplier * 19,
                      width: SizeConfig.widthMultiplier * 88,
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.5,
                          horizontal: SizeConfig.widthMultiplier * 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            maxLines: 6,
                            style: AppTextStyles.bodySmall
                                .copyWith(fontWeight: FontWeight.w500),
                            decoration: InputDecoration(
                                isDense: true,
                                isCollapsed: true,
                                hintText: "Secret Pharse",
                                hintStyle: AppTextStyles.bodyExtraSmall
                                    .copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white38,
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05),
                                border: InputBorder.none),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: SizeConfig.heightMultiplier * 2.3,
                                  width: SizeConfig.widthMultiplier * 13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white24),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.copy,
                                        color: Colors.white38,
                                        size: SizeConfig.imageSizeMultiplier *
                                            2.5,
                                      ),
                                      Spacing.x(1),
                                      Text(
                                        "Paste",
                                        style: AppTextStyles.bodyExtraSmall
                                            .copyWith(
                                                color: Colors.white60,
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        .8),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacing.y(2),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 80,
                      child: Text(
                        "Typically 12 (sometimes 18, 24) words separated by single spaces",
                        style: AppTextStyles.bodyExtraSmall
                            .copyWith(height: 1.9, color: Colors.white54),
                      ),
                    ),
                    Spacing.y(25),
                    CustomButton(
                      title: "Import",
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
