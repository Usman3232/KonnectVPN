import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/swap.dart';
import 'package:konnekt_vpn/views/pages/import/import.dart';
import 'package:konnekt_vpn/views/pages/wallet/wallet.dart';
import '../../utils/size_config.dart';
import '../../utils/spacing.dart';

class WalletOptionDialog extends StatefulWidget {
  const WalletOptionDialog({
    super.key,
  });

  @override
  State<WalletOptionDialog> createState() => _WalletOptionDialogState();
}

class _WalletOptionDialogState extends State<WalletOptionDialog> {
  final cont = Get.find<SwapCont>();

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

  List<String> walletTitle = ["BNB Smart Chain", "Polygon", "Polygon"];
  List<String> walletIcons = [
    AppIcons.bnb,
    AppIcons.bnb,
    AppIcons.bnb,
  ];
  List<String> walletButtonTitle = ["Import", "Create"];
  List<String> walletButtonIcons = [AppIcons.import, AppIcons.create];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      child: Container(
        height: SizeConfig.heightMultiplier * 42,
        width: SizeConfig.widthMultiplier * 88,
        padding: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 3,
            left: SizeConfig.widthMultiplier * 5,
            right: SizeConfig.widthMultiplier * 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white12),
          color: const Color(0xff121212),
          borderRadius: BorderRadius.circular(24),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "Wallet Option",
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700),
            ),
            Spacing.y(1),
            Text(
              "Your List Wallet What  You Have",
              style: textTheme.displaySmall!.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white38),
            ),
            Spacing.y(1.5),
            ...List.generate(
              walletTitle.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 1.5),
                child: Row(
                  children: [
                    Container(
                      height: SizeConfig.heightMultiplier * 4.6,
                      width: SizeConfig.widthMultiplier * 10.3,
                      margin: EdgeInsets.only(
                          right: SizeConfig.widthMultiplier * 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(.05),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        walletIcons[index],
                        height: SizeConfig.imageSizeMultiplier * 5,
                      ),
                    ),
                    Text(
                      walletTitle[index],
                      style: textTheme.displaySmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                      size: SizeConfig.imageSizeMultiplier * 4,
                    )
                  ],
                ),
              ),
            ),
            Spacing.y(2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  walletButtonTitle.length,
                  (index) => InkWell(
                    onTap: () {
                      Get.back();
                      cont.isBlur.value = false;
                      if (index == 0) {
                        Get.to(() => ImportScreen());
                      } else if (index == 1) {
                        Get.to(() => WalletScreen());
                      }
                    },
                    child: Container(
                      height: SizeConfig.heightMultiplier * 5.6,
                      width: SizeConfig.widthMultiplier * 37,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 1.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62),
                          color: Colors.white.withOpacity(.05)),
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.heightMultiplier * 4,
                            width: SizeConfig.widthMultiplier * 8.8,
                            margin: EdgeInsets.only(
                                right: SizeConfig.widthMultiplier * 3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.05)),
                            alignment: Alignment.center,
                            child: Image.asset(
                              walletButtonIcons[index],
                              height: SizeConfig.imageSizeMultiplier * 4,
                            ),
                          ),
                          Text(
                            walletButtonTitle[index],
                            style: textTheme.displaySmall!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white54),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
