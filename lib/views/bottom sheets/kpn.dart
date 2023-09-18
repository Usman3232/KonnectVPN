import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/controllers/home.dart';
import '../../constants/colors.dart';
import '../../constants/icons.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';
import '../widgets/custom_btn.dart';

class KpnTypeBottomSheet extends StatefulWidget {
  const KpnTypeBottomSheet({
    super.key,
  });

  @override
  State<KpnTypeBottomSheet> createState() => _KpnTypeBottomSheetState();
}

class _KpnTypeBottomSheetState extends State<KpnTypeBottomSheet> {
  final cont = Get.find<HomeCont>();
  List<String> kpnTitles = ["Full KPN", "Smart KPN", "Disable KPN"];
  List<String> kpnIcons = [
    AppIcons.thunder,
    AppIcons.lightBuld,
    AppIcons.closeCircleFilled
  ];

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
              "KPN Type",
              style:
                  textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          Spacing.y(2),
          ...List.generate(
            3,
            (index) => InkWell(
              onTap: () {
                cont.selectedKpnType.value = index;
              },
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2.4),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 6,
                      width: SizeConfig.widthMultiplier * 13,
                      padding: const EdgeInsets.all(14),
                      margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 3),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(kpnIcons[index]),
                    ),
                    Text(
                      kpnTitles[index],
                      style: textTheme.bodySmall!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Container(
                      height: SizeConfig.heightMultiplier * 2.5,
                      width: SizeConfig.widthMultiplier * 5,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: cont.selectedKpnType.value == index
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
                            color: cont.selectedKpnType.value == index
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
