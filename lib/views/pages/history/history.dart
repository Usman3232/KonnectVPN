import 'package:flutter/material.dart';
import 'package:konnekt_vpn/constants/colors.dart';
import 'package:konnekt_vpn/constants/constants.dart';
import 'package:konnekt_vpn/constants/icons.dart';
import 'package:konnekt_vpn/constants/text_styles.dart';
import 'package:konnekt_vpn/utils/size_config.dart';
import 'package:konnekt_vpn/utils/spacing.dart';
import 'package:konnekt_vpn/views/widgets/background.dart';
import 'package:konnekt_vpn/views/widgets/custom_appbar.dart';
import 'package:konnekt_vpn/views/widgets/custom_back_btn.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Deposit'),
    Tab(text: 'Withdrawls'),
    Tab(text: 'Swap'),
    Tab(text: 'Purchases'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing.y(6),
                  const CustomAppbar(title: "History"),
                  Spacing.y(5),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.widthMultiplier * 2),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: SizeConfig.heightMultiplier * .2,
                            width: SizeConfig.widthMultiplier * 100,
                            color: Colors.white10,
                          ),
                        ),
                        TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelPadding: EdgeInsets.zero,
                          indicatorWeight: SizeConfig.heightMultiplier * .2,
                          indicatorColor: AppColors.primaryClr,
                          controller: _tabController,
                          labelColor: AppColors.primaryClr,
                          unselectedLabelColor: Colors.white30,
                          labelStyle: textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.w500),
                          tabs: myTabs,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const DepositTab(),
                  Center(
                    child: Text(
                      "2",
                      style: textTheme.displayLarge!,
                    ),
                  ),
                  Center(
                    child: Text(
                      "3",
                      style: textTheme.displayLarge!,
                    ),
                  ),
                  Center(
                    child: Text(
                      "4",
                      style: textTheme.displayLarge!,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DepositTab extends StatelessWidget {
  const DepositTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
      physics: const BouncingScrollPhysics(),
      children: [
        Spacing.y(3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Show 123 datas",
              style: textTheme.displaySmall!.copyWith(
                  fontSize: SizeConfig.textMultiplier * 1.05,
                  color: Colors.white38),
            ),
            Container(
              height: 26,
              width: 63,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.borderClr),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.filter_alt_outlined,
                      color: Colors.white60,
                      size: SizeConfig.imageSizeMultiplier * 4),
                  Spacing.x(1),
                  Text(
                    "Filter",
                    style: textTheme.displaySmall!.copyWith(
                        fontSize: SizeConfig.textMultiplier * 1.05,
                        color: Colors.white60),
                  ),
                ],
              ),
            )
          ],
        ),
        Spacing.y(3),
        ...List.generate(
          10,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: SizeConfig.heightMultiplier * 5.8,
                  width: SizeConfig.widthMultiplier * 12.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white10),
                  alignment: Alignment.center,
                  child: Image.asset(AppIcons.dataBase,
                      height: SizeConfig.imageSizeMultiplier * 5),
                ),
                Spacing.x(4),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Model : ",
                          style: textTheme.bodySmall!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "12EWTU",
                          style: textTheme.bodySmall!.copyWith(
                              color: AppColors.primaryClr,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Spacing.y(1),
                    Text(
                      "Bandwidth : 500 KNKT/m",
                      style: textTheme.displaySmall!.copyWith(
                          color: Colors.white38,
                          fontSize: SizeConfig.textMultiplier * 1.05),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
