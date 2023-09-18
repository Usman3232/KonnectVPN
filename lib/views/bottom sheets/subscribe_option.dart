import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/controllers/calculator.dart';
import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../constants/text_styles.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';
import '../widgets/custom_btn.dart';

class SubscribeOptionBottomSheet extends StatefulWidget {
  const SubscribeOptionBottomSheet({
    super.key,
  });

  @override
  State<SubscribeOptionBottomSheet> createState() =>
      _SubscribeOptionBottomSheetState();
}

class _SubscribeOptionBottomSheetState
    extends State<SubscribeOptionBottomSheet> {
  final cont = Get.find<CalculatorCont>();
  List<String> subscribeTitles = ["Basic", "Bronze", "Silver", "Gold"];
  List<String> subscribeIcons = [
    AppIcons.crownBasic,
    AppIcons.crownBronze,
    AppIcons.crownSilver,
    AppIcons.crownGold
  ];

  int selectedSubcription = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
    Future.delayed(Duration.zero, () {
      cont.isBlur.value = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: SizeConfig.heightMultiplier * 45,
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 2,
          vertical: SizeConfig.heightMultiplier * 1),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 6,
          vertical: SizeConfig.heightMultiplier * 3),
      decoration: BoxDecoration(
        color: const Color(0xff171717),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Subscribe Option",
              style:
                  textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Spacing.y(2),
          ...List.generate(
            subscribeTitles.length,
            (index) => InkWell(
              onTap: () {
                selectedSubcription = index;
                setState(() {});
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 1.2),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 4,
                      width: SizeConfig.widthMultiplier * 8.5,
                      padding: const EdgeInsets.all(6),
                      margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 3),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(subscribeIcons[index]),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          subscribeTitles[index],
                          style: textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Spacing.y(.4),
                        Text(
                          "Limit Device : 0",
                          style: textTheme.displaySmall!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1.05,
                              color: Colors.white38,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: SizeConfig.heightMultiplier * 2.5,
                      width: SizeConfig.widthMultiplier * 5,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: selectedSubcription == index
                                ? AppColors.primaryClr
                                : AppColors.borderClr),
                      ),
                      alignment: AlignmentDirectional.center,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        height: SizeConfig.heightMultiplier * 2.5,
                        width: SizeConfig.widthMultiplier * 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedSubcription == index
                                ? AppColors.primaryClr
                                : Colors.transparent),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacing.y(3),
          CustomButton(
            title: "Done",
            isShadow: false,
            onTap: () {
              Get.back();
            },
          )
        ],
      ),
    );
  }
}
