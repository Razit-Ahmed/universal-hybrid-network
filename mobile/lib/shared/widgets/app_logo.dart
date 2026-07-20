import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final bool showTitle;
  final bool showSubtitle;

  const AppLogo({
    super.key,
    this.size = 120,
    this.showTitle = true,
    this.showSubtitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(size / 4),
            border: Border.all(
              color: AppColors.primary,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withOpacity(0.25),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Center(
            child: Text(
              "UHN",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: size * 0.28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),

        if (showTitle) ...[
          const SizedBox(height: 24),

          Text(
            AppStrings.appName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],

        if (showSubtitle) ...[
          const SizedBox(height: 8),

          Text(
            AppStrings.splashSubtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ],
    );
  }
}