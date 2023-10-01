import 'package:flutter/material.dart';

import '../../../../constants/icons.dart';
import '../../../../utils/size_config.dart';
import '../../../../utils/spacing.dart';

class VerificationTile extends StatelessWidget {
  const VerificationTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onEditTap,
    this.onDeleteTap,
    this.isDelete = true,
  });
  final String title, subtitle, icon;
  final VoidCallback onEditTap;
  final VoidCallback? onDeleteTap;
  final bool isDelete;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1.5),
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 4.5,
            width: SizeConfig.widthMultiplier * 10,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white10),
            alignment: Alignment.center,
            child:
                Image.asset(icon, height: SizeConfig.imageSizeMultiplier * 4.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Spacing.y(1),
              Text(
                subtitle,
                style: textTheme.displaySmall!.copyWith(
                    fontSize: SizeConfig.textMultiplier * 1.05,
                    color: Colors.white38),
              )
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: onEditTap,
            child: Image.asset(AppIcons.edit,
                height: SizeConfig.imageSizeMultiplier * 5),
          ),
          isDelete
              ? Padding(
                  padding:
                      EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
                  child: InkWell(
                    onTap: onDeleteTap,
                    child: Image.asset(AppIcons.delete,
                        height: SizeConfig.imageSizeMultiplier * 5),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
