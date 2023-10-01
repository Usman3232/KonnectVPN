import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/images.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';
import 'package:konnekt_vpn/views/widgets/custom_btn.dart';

class TransactionDetailScreen extends StatelessWidget {
  const TransactionDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.y(6),
              Row(
                children: [
                  const CustomBackButton(),
                  Spacing.x(18),
                  Text(
                    "Transaction Details",
                    style: textTheme.bodyMedium!.copyWith(
                      color: Colors.white.withOpacity(.8),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacing.y(4),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipPath(
                          clipper: TicketClipper(),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.widthMultiplier * 6),
                            margin: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 7),
                            height: SizeConfig.heightMultiplier * 64,
                            width: SizeConfig.widthMultiplier * 85,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Spacing.y(8),
                                Text(
                                  "Confirmed",
                                  style: textTheme.bodySmall!
                                      .copyWith(color: AppColors.primaryClr),
                                ),
                                Spacing.y(3),
                                Text("Transaction Swap",
                                    style: textTheme.displayLarge!),
                                Spacing.y(1),
                                Text(
                                  "We have sent the money on your account",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: Colors.white38),
                                ),
                                Spacing.y(5),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Transaction ID",
                                    style: textTheme.displaySmall!.copyWith(
                                        fontSize:
                                            SizeConfig.textMultiplier * 1.05,
                                        color: Colors.white38),
                                  ),
                                ),
                                Spacing.y(1),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "3M8w2knJKsr3jqMatYiyuraxVvZA",
                                    style: textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Spacing.y(3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Source of Funds",
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.05,
                                                  color: Colors.white38),
                                        ),
                                        Spacing.y(1),
                                        SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 30,
                                          child: Text(
                                            "Ox0b06d4JH48e5DK3jm4a3af69BnVO",
                                            style: textTheme.displaySmall!
                                                .copyWith(
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.05,
                                                    fontWeight:
                                                        FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Destination",
                                          style: textTheme.displaySmall!
                                              .copyWith(
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      1.05,
                                                  color: Colors.white38),
                                        ),
                                        Spacing.y(1),
                                        SizedBox(
                                          width:
                                              SizeConfig.widthMultiplier * 30,
                                          child: Text(
                                            "3M8w2knJKsr3jqMatYiyuraxVvZA",
                                            style: textTheme.displaySmall!
                                                .copyWith(
                                                    fontSize: SizeConfig
                                                            .textMultiplier *
                                                        1.05,
                                                    fontWeight:
                                                        FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Spacing.y(7.5),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          SizeConfig.widthMultiplier * 4),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ...List.generate(
                                        13,
                                        (index) => Container(
                                          height:
                                              SizeConfig.heightMultiplier * .2,
                                          width: SizeConfig.widthMultiplier * 3,
                                          decoration: const BoxDecoration(
                                              color: Colors.white24),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Spacing.y(5),
                                Text(
                                  "Total Amount",
                                  style: textTheme.displaySmall!.copyWith(
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.05,
                                      color: Colors.white38),
                                ),
                                Spacing.y(2),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("\$204.48 ",
                                        style: textTheme.headlineLarge!
                                            .copyWith(
                                                fontSize:
                                                    SizeConfig.textMultiplier *
                                                        3.2)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom:
                                              SizeConfig.heightMultiplier * .8),
                                      child: Text(
                                        "(0.021 KPN)",
                                        style: textTheme.bodySmall!.copyWith(
                                            color: AppColors.primaryClr,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacing.y(.5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Withdraw fee ",
                                      style: textTheme.displaySmall!.copyWith(
                                          color: Colors.white38,
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.05),
                                    ),
                                    Text(
                                      "0,0015 KPN",
                                      style: textTheme.displaySmall!.copyWith(
                                          fontSize:
                                              SizeConfig.textMultiplier * 1.05),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Image.asset(
                            AppImages.transactionCheck,
                            height: SizeConfig.imageSizeMultiplier * 28,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 2),
                child: CustomButton(
                  title: "Back to Wallet",
                  isShadow: false,
                  onTap: () {},
                ),
              ),
              Spacing.y(2)
            ],
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.addOval(
        Rect.fromCircle(center: Offset(0.0, size.height / 1.4), radius: 30));
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height / 1.4), radius: 30));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
