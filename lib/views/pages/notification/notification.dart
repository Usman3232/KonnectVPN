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

class NotificationScreen extends StatefulWidget {
  NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'System'),
    Tab(text: 'Announcement'),
    Tab(text: 'Campaign'),
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
                  const CustomAppbar(title: "Notifications"),
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
                children: const [
                  SystemTab(),
                  AnnouncementTab(),
                  CompaigntTab()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class AnnouncementTab extends StatelessWidget {
  const AnnouncementTab({
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
              top: SizeConfig.heightMultiplier * 4),
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
                child: Image.asset(AppIcons.announcement,
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
