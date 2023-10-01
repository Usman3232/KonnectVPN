import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class CompaigntTab extends StatelessWidget {
  const CompaigntTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.widthMultiplier * 6,
              right: SizeConfig.widthMultiplier * 6,
              top: SizeConfig.heightMultiplier * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 20,
                width: SizeConfig.widthMultiplier * 100,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              Spacing.y(2),
              Text(
                "Sollicitudin ligula et non non. Vestibulum gravida metus nisi id posuere ullamcorper blandit nisl.",
                style: textTheme.displaySmall!
                    .copyWith(height: 1.5, fontWeight: FontWeight.w500),
              ),
              Spacing.y(1),
              Text(
                "Jul 12, 2023 1:16 pm",
                style: textTheme.displaySmall!.copyWith(
                    color: AppColors.primaryClr,
                    fontSize: SizeConfig.textMultiplier * 1.05),
              )
            ],
          ),
        );
      },
    );
  }
}
