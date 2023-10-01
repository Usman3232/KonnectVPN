import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controllers/referral.dart';
import '../../../../utils/size_config.dart';

class ReferralType extends StatelessWidget {
  ReferralType({
    super.key,
    required this.title,
    required this.icon,
    required this.indexx,
    required this.onTap,
  });

  final String title, icon;
  final int indexx;
  final VoidCallback onTap;

  final cont = Get.find<ReferralCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () => Row(
        children: [
          InkWell(
            onTap: onTap,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  margin:
                      EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 1),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white10),
                  alignment: Alignment.center,
                  child: Image.asset(
                    icon,
                    height: SizeConfig.imageSizeMultiplier * 5.5,
                    color: cont.selectedType.value == indexx
                        ? Colors.white
                        : Colors.white38,
                  ),
                ),
                Text(
                  title,
                  style: textTheme.displaySmall!.copyWith(
                      color: cont.selectedType.value == indexx
                          ? Colors.white
                          : Colors.white38,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          indexx == 2
              ? const SizedBox()
              : Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.heightMultiplier * 2,
                      left: SizeConfig.widthMultiplier * 2,
                      right: SizeConfig.widthMultiplier * 2),
                  child: SizedBox(
                    width: SizeConfig.widthMultiplier * 8,
                    child: Divider(
                      height: 0,
                      color: Colors.white30,
                      thickness: SizeConfig.heightMultiplier * .2,
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
