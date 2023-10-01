import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../controllers/account_activity.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';
import '../../../widgets/custom_dropdownfield.dart';

class LoginActivityTab extends StatelessWidget {
  LoginActivityTab({
    super.key,
  });
  final cont = Get.find<AccountActivityCont>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
      child: Column(
        children: [
          Spacing.y(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Range",
                    style: textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white30),
                  ),
                  Spacing.y(1),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 50,
                    child: Obx(
                      () => CustomDropDownField(
                        hinttext: "Range",
                        listdata: cont.rangeList,
                        currentSelectedValue: cont.selectedRange.value == ""
                            ? null
                            : cont.selectedRange.value,
                        onChanged: (value) {
                          cont.selectedRange.value = value.toString();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Range",
                    style: textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white30),
                  ),
                  Spacing.y(1),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 35,
                    child: Obx(
                      () => CustomDropDownField(
                        hinttext: "Filter",
                        listdata: cont.filterList,
                        currentSelectedValue: cont.selectedFilter.value == ""
                            ? null
                            : cont.selectedFilter.value,
                        onChanged: (value) {
                          cont.selectedFilter.value = value.toString();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacing.y(2),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    _rowInfo(textTheme, title: "Date", data: "Level 1"),
                    _rowInfo(textTheme, title: "Secure", data: "3.54% - 5.06%"),
                    _rowInfo(textTheme, title: "Location", data: "3 Months"),
                    _rowInfo(textTheme, title: "IP Address", data: "3 Months"),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 1.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                              16,
                              (index) => Container(
                                    height: SizeConfig.heightMultiplier * .2,
                                    width: SizeConfig.widthMultiplier * 3,
                                    decoration: BoxDecoration(
                                      color: Colors.white10,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 1,
                          bottom: SizeConfig.heightMultiplier * 2),
                      child: Row(
                        children: [
                          Text(
                            "Status",
                            style: textTheme.displaySmall!
                                .copyWith(color: Colors.white30),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.check_circle_rounded,
                            color: AppColors.primaryClr,
                            size: SizeConfig.imageSizeMultiplier * 4,
                          ),
                          Spacing.x(2),
                          Text(
                            "Completed",
                            style: textTheme.displaySmall!.copyWith(
                                color: AppColors.primaryClr,
                                fontSize: SizeConfig.textMultiplier * 1.05),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Padding _rowInfo(TextTheme textTheme, {String title = "", data = ""}) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.displaySmall!.copyWith(color: Colors.white30),
          ),
          Text(
            data,
            style: textTheme.displaySmall!,
          )
        ],
      ),
    );
  }
}
