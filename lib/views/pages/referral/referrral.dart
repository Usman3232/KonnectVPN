import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/controllers/referral.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/pages/skate%20kpn/skate_kpn.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';
import '../../widgets/number_button.dart';

class ReferralScreen extends StatefulWidget {
  ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  final cont = Get.put(ReferralCont());
  List<String> type = ["Share Code", "Get Money", "Withdraw"];
  List<String> typeIcons = [AppIcons.users, AppIcons.getMoney, AppIcons.import];
  int selectedType = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    Duration animaDuration = const Duration(milliseconds: 700);
    return Scaffold(
      body: Background(
        child: Obx(
          () => Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacing.y(6),
                    CustomAppbar(
                      title: "Referral Code",
                      onTap: () {
                        if (cont.isWiddraw.value) {
                          cont.isWiddraw.value = false;
                          Future.delayed(
                              animaDuration, () => cont.showBody.value = true);
                        } else {
                          Get.back();
                        }
                      },
                    ),
                    Spacing.y(6),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Balance",
                            style: textTheme.bodySmall!
                                .copyWith(color: Colors.white54),
                          ),
                          Spacing.y(1),
                          Text(
                            "\$1.000",
                            style: textTheme.headlineLarge!.copyWith(
                                fontSize: SizeConfig.textMultiplier * 5.6),
                          ),
                          Spacing.y(2),
                          !cont.showBody.value
                              ? const SizedBox()
                              : InkWell(
                                  onTap: () {
                                    cont.isWiddraw.value = true;
                                    cont.showBody.value = false;
                                  },
                                  child: Container(
                                    height: 32,
                                    width: 96,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Colors.white.withOpacity(.8)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        color: Colors.white),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Withdraw",
                                      style: textTheme.displaySmall!.copyWith(
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(.7),
                                      ),
                                    ),
                                  ),
                                ),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Spacing.y(5),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ...List.generate(
                                      type.length,
                                      (index) => Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectedType = index;
                                              });
                                            },
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 48,
                                                  width: 48,
                                                  margin: EdgeInsets.only(
                                                      bottom: SizeConfig
                                                              .heightMultiplier *
                                                          1),
                                                  decoration:
                                                      const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              Colors.white10),
                                                  alignment: Alignment.center,
                                                  child: Image.asset(
                                                    typeIcons[index],
                                                    height: SizeConfig
                                                            .imageSizeMultiplier *
                                                        5.5,
                                                    color: selectedType == index
                                                        ? Colors.white
                                                        : Colors.white38,
                                                  ),
                                                ),
                                                Text(
                                                  type[index],
                                                  style: textTheme.displaySmall!
                                                      .copyWith(
                                                          color: selectedType ==
                                                                  index
                                                              ? Colors.white
                                                              : Colors.white38,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                          index == 2
                                              ? const SizedBox()
                                              : Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: SizeConfig
                                                              .heightMultiplier *
                                                          2,
                                                      left: SizeConfig
                                                              .widthMultiplier *
                                                          2,
                                                      right: SizeConfig
                                                              .widthMultiplier *
                                                          2),
                                                  child: SizedBox(
                                                    width: SizeConfig
                                                            .widthMultiplier *
                                                        8,
                                                    child: Divider(
                                                      height: 0,
                                                      color: Colors.white30,
                                                      thickness: SizeConfig
                                                              .heightMultiplier *
                                                          .2,
                                                    ),
                                                  ),
                                                )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Spacing.y(5),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DottedBorder(
                                      color: AppColors.primaryClr,
                                      strokeWidth: 2,
                                      dashPattern: const [8, 4],
                                      radius: const Radius.circular(14),
                                      borderType: BorderType.RRect,
                                      child: Container(
                                        height: SizeConfig.heightMultiplier * 6,
                                        width: SizeConfig.widthMultiplier * 70,
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                SizeConfig.widthMultiplier * 4),
                                        decoration: BoxDecoration(
                                          color: AppColors.primaryClr
                                              .withOpacity(.1),
                                          borderRadius:
                                              BorderRadius.circular(14),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "EKREF5368",
                                              style: textTheme.bodyMedium!
                                                  .copyWith(
                                                      color:
                                                          AppColors.primaryClr),
                                            ),
                                            Text(
                                              "Copy",
                                              style: textTheme.displaySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white38),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: SizeConfig.heightMultiplier * 6,
                                      width: SizeConfig.widthMultiplier * 13.5,
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryClr,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.share,
                                        color: Colors.white,
                                        size:
                                            SizeConfig.imageSizeMultiplier * 7,
                                      ),
                                    )
                                  ],
                                ),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Spacing.y(6),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "My Referrals",
                                    style: textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                ),
                          !cont.showBody.value
                              ? const SizedBox()
                              : Spacing.y(2),
                          !cont.showBody.value
                              ? const SizedBox()
                              : MyReferralsTile(isAvailable: false),
                          !cont.showBody.value
                              ? const SizedBox()
                              : MyReferralsTile(isAvailable: true),
                          !cont.showBody.value
                              ? const SizedBox()
                              : MyReferralsTile(isAvailable: false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //
              AnimatedPositioned(
                duration: animaDuration,
                top: SizeConfig.heightMultiplier * 20,
                right: cont.isWiddraw.value
                    ? SizeConfig.widthMultiplier * 6
                    : -SizeConfig.widthMultiplier * 100,
                child: Column(
                  children: [
                    Spacing.y(16),
                    Container(
                      height: 74,
                      width: SizeConfig.widthMultiplier * 88,
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.widthMultiplier * 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$8.21",
                            style: textTheme.headlineMedium!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 28,
                              width: 63,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Wallet",
                                    style: textTheme.displaySmall!.copyWith(
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05,
                                        color: Colors.white54),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white54,
                                    size: SizeConfig.imageSizeMultiplier * 4.5,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacing.y(1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Fee Rate  : ",
                          style: textTheme.displaySmall!.copyWith(
                              color: Colors.white54,
                              fontSize: SizeConfig.textMultiplier * 1.05),
                        ),
                        Text(
                          "5% From Transaction",
                          style: textTheme.displaySmall!.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1.05),
                        ),
                        Spacing.y(5),
                      ],
                    ),
                  ],
                ),
              ),
              //
              AnimatedPositioned(
                bottom: 0,
                duration: animaDuration,
                left: cont.isWiddraw.value
                    ? 0
                    : -SizeConfig.widthMultiplier * 100,
                child: Container(
                  height: SizeConfig.heightMultiplier * 50,
                  width: SizeConfig.widthMultiplier * 100,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacing.y(2),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: SizeConfig.widthMultiplier * 6,
                        children: [
                          NumberButton(
                            title: "1",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "2",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "3",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "4",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "5",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "6",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "7",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "8",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "9",
                            onTap: () {},
                          ),
                          NumberButton(
                            title: "00",
                            onTap: () {},
                          ),
                          NumberButton(
                            onTap: () {},
                          ),
                          NumberButton(
                            isIcon: true,
                            onTap: () {},
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.widthMultiplier * 6),
                        child: CustomButton(
                          title: "Transfer",
                          isShadow: false,
                          onTap: () {
                            Get.to(() => const SkateKpnScreen());
                          },
                        ),
                      ),
                      Spacing.y(2)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

//   Widget _rowInfo(String title, data) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white30),
//           ),
//           Text(
//             data,
//             style: Theme.of(context).textTheme.bodySmall!,
//           )
//         ],
//       ),
//     );
//   }
}

class MyReferralsTile extends StatelessWidget {
  const MyReferralsTile({
    super.key,
    required this.isAvailable,
  });

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            margin: EdgeInsets.only(right: SizeConfig.widthMultiplier * 3),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              AppIcons.myReferrals,
              height: SizeConfig.imageSizeMultiplier * 5.5,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhon Doe",
                style:
                    textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700),
              ),
              Spacing.y(1),
              isAvailable
                  ? Text(
                      "Available",
                      style: textTheme.displaySmall!
                          .copyWith(color: AppColors.primaryClr),
                    )
                  : Text(
                      "Pending",
                      style: textTheme.displaySmall!
                          .copyWith(color: Colors.white38),
                    )
            ],
          ),
          const Spacer(),
          Text(
            "\$10",
            style: textTheme.bodyLarge!
                .copyWith(color: Colors.white.withOpacity(.7)),
          )
        ],
      ),
    );
  }
}

class ReferralCodeStepper extends StatelessWidget {
  ReferralCodeStepper({
    super.key,
    this.isLast = false,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        InkWell(
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
              ),
              Text(
                title,
                style: textTheme.displaySmall!
                    .copyWith(fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        isLast
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
    );
  }
}
