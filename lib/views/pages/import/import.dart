import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/controllers/swap.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/balance/balance.dart';
import 'package:konnekt_vpn/views/widgets/auth_textfield.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../widgets/custom_appbar.dart';

class ImportScreen extends StatelessWidget {
  ImportScreen({super.key});

  final cont = Get.find<SwapCont>();
  TextEditingController nickName = TextEditingController();
  List<String> importTypeList = [
    "Pharse",
    "Keystore",
    "Private Key",
    "Address"
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Background(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Column(
              children: [
                Spacing.y(6),
                const CustomAppbar(title: "Import"),
                Spacing.y(8),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address Nickname",
                        style: textTheme.displaySmall!,
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
                              importTypeList.length,
                              (index) => InkWell(
                                onTap: () {
                                  cont.selectedImport.value = index;
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: SizeConfig.heightMultiplier * 3.6,
                                  width: SizeConfig.widthMultiplier * 21,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: cont.selectedImport.value == index
                                          ? AppColors.primaryClr
                                          : Colors.transparent),
                                  child: Text(
                                    importTypeList[index],
                                    style: textTheme.displaySmall!.copyWith(
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            cont.selectedImport.value == index
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
                              style: textTheme.bodySmall!
                                  .copyWith(fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                  isDense: true,
                                  isCollapsed: true,
                                  hintText: "Secret Pharse",
                                  hintStyle: textTheme.displaySmall!.copyWith(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  color: Colors.white60,
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
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
                          style: textTheme.displaySmall!
                              .copyWith(height: 1.9, color: Colors.white54),
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
                    title: "Import",
                    isShadow: false,
                    onTap: () {
                      Get.to(() => BalanceScreen());
                    },
                  ),
                ),
                Spacing.y(2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
