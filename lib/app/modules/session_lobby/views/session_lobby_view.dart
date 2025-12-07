import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yasinmusa/app/data/app_colors.dart';
import 'package:yasinmusa/app/data/app_text_styles.dart';
import 'package:yasinmusa/app/data/image_path.dart';
import 'package:yasinmusa/app/modules/common_widgets/custom_app_bar.dart';
import '../controllers/session_lobby_controller.dart';

class SessionLobbyView extends GetView<SessionLobbyController> {
  SessionLobbyView({super.key});

  final lobbyItems = [
    {
      "background": ImagePath.blueContainerWelcome,
      "icon": ImagePath.fanIcon,
      "title": "Spinning Wheel",
      "subTitle": "Spin to decide the payer",
    },
    {
      "background": ImagePath.sessionLobbyPinkContainer,
      "icon": ImagePath.diceRollIcon,
      "title": "Dice Roll",
      "subTitle": "Roll the dice",
    },
    {
      "background": ImagePath.sessionLobbyAmberContainer,
      "icon": ImagePath.sessorIcon,
      "title": "Rock Paper Scissors",
      "subTitle": "Classic game",
    },
    {
      "background": ImagePath.sessionLobbyGreenContainer,
      "icon": ImagePath.dollerIcon,
      "title": "Coin Flip",
      "subTitle": "Heads or tails",
    },
    {
      "background": ImagePath.sessionLobbyPinkContainer,
      "icon": ImagePath.card,
      "title": "Card Draw",
      "subTitle": "Draw the lowest card",
    },
    {
      "background": ImagePath.sessionLobbyYellowContainer,
      "icon": ImagePath.frameIcon,
      "title": "Card Draw",
      "subTitle": "Draw the lowest card",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Session Lobby', subTitle: 'Pizza Palace'),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                childAspectRatio: 0.80, // width / height ratio
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final item = lobbyItems[index];
                  return buildLobbyCard(
                    backgroundImage: item["background"] ?? '',
                    title: item["title"] ?? '',
                    subTitle: item["subTitle"] ?? '',
                    icon: item["icon"] ?? '',
                  );
                },
                childCount: lobbyItems.length, // number of grid items
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLobbyCard({
    required String backgroundImage,
    required String title,
    required String subTitle,
    required String icon,
  }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
          scale: 4,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(icon, scale: 3),
            Spacer(),
            Text(
              title,
              style: AppTextStyles.medium16.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            Text(
              subTitle,
              style: AppTextStyles.medium12.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
