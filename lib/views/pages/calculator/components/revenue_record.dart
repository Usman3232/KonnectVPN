import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../controllers/calculator.dart';
import '../../../../utils/size_config.dart';

class RevenueRecord extends StatelessWidget {
  RevenueRecord({super.key});
  final cont = Get.find<CalculatorCont>();
  List<String> revenueTitle = ["Day", "Monthly", "Year"];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Revenue Record",
            style: textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700),
          ),
          Container(
            height: SizeConfig.heightMultiplier * 4,
            width: SizeConfig.widthMultiplier * 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              border: Border.all(color: AppColors.borderClr),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  revenueTitle.length,
                  (index) => GestureDetector(
                    onTap: () {
                      cont.selectedRevenue.value = index;
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                      height: SizeConfig.heightMultiplier * 3.3,
                      width: SizeConfig.widthMultiplier * 13.5,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        gradient: cont.selectedRevenue.value == index
                            ? LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.white.withOpacity(.8)
                                ],
                              )
                            : null,
                      ),
                      child: Text(
                        revenueTitle[index],
                        style: textTheme.displaySmall!.copyWith(
                            color: cont.selectedRevenue.value == index
                                ? Colors.black
                                : Colors.white,
                            fontSize: SizeConfig.textMultiplier * .9,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
