import 'package:contact_app/core/utils/app_assets.dart';
import 'package:contact_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlueColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueColor,
        title: Image.asset(AppAssets.appBarImage),
        titleSpacing: 26,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(AppAssets.bodyAnimationImage),
          // Image.asset(AppAssets.bodyImage),
          Text(
            'There is No Contacts Added Here',
            style: TextStyle(
              fontSize: 20,
              color: AppColors.goldColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.goldColor,
        foregroundColor: AppColors.darkBlueColor,
        onPressed: () {
          print('Done pressed');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
