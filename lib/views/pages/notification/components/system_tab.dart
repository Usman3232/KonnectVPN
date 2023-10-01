import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class SystemTab extends StatelessWidget {
  const SystemTab({
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
            top: SizeConfig.heightMultiplier * 4,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 4,
                width: SizeConfig.widthMultiplier * 8.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white10),
                alignment: Alignment.center,
                child: Image.asset(AppIcons.bell,
                    height: SizeConfig.imageSizeMultiplier * 5),
              ),
              Spacing.x(4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 75,
                    child: Text(
                      "Sollicitudin ligula et non non. Vestibulum gravida metus nisi id posuere ullamcorper blandit nisl.",
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.displaySmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.widthMultiplier * 75,
                    child: Text(
                      "Augue volutpat in volutpat adipiscing. Tempus massa purus ultricies interdum nisi. Neque et sem enim elit tincidunt congue sem sagittis sed.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: textTheme.displaySmall!.copyWith(
                          height: 1.9,
                          color: Colors.white38,
                          fontSize: SizeConfig.textMultiplier * 1.05),
                    ),
                  ),
                  Spacing.y(2),
                  Text(
                    "Jul 12, 2023 1:16 pm",
                    style: textTheme.displaySmall!.copyWith(
                        color: AppColors.primaryClr,
                        fontSize: SizeConfig.textMultiplier * 1.05),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
