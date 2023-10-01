import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:get/get.dart';
import '../../../../constants/icons.dart';
import '../../../../controllers/subcription.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class EWalletExpansionTile extends StatelessWidget {
  EWalletExpansionTile({
    super.key,
  });

  final cont = Get.find<SubcriptionCont>();
  List<String> eWalletTitles = ["Paypal", "Google Pay", "Apple Pay"];

  List<String> eWalletIcons = [
    AppIcons.paypal,
    AppIcons.googlePay,
    AppIcons.applePay
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Visibility(
      visible: cont.isEWallet.value,
      child: FadeIn(
        duration: const Duration(milliseconds: 600),
        child: Column(
          children: [
            ...List.generate(
              3,
              (index) => InkWell(
                onTap: () {
                  cont.selectedEWallet.value = index;
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.heightMultiplier * .5),
                  child: Row(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 8,
                            right: SizeConfig.widthMultiplier * 4),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset(
                          eWalletIcons[index],
                          height: SizeConfig.imageSizeMultiplier * 6,
                        ),
                      ),
                      Text(
                        eWalletTitles[index],
                        style: textTheme.displaySmall!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: cont.selectedEWallet.value == index
                                ? const Color(0xff44CCCC)
                                : Colors.white24,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: cont.selectedEWallet.value == index
                                ? const Color(0xff44CCCC)
                                : Colors.transparent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Spacing.y(2),
          ],
        ),
      ),
    );
  }
}
