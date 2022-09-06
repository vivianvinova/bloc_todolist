import 'package:auto_route/auto_route.dart';

import '../../config/config.dart';
import '../widges.dart';
import 'package:flutter/material.dart';

import '../../service/navigation_service.dart';


class CustomAppBar extends AppBar {
  final bool haveBackButton;
  final String? actionIcon;
  final String? labelTitle;
  final Widget? titleWidget;
  final void Function()? actionOnPressed;
  CustomAppBar( {
    this.haveBackButton = true,
    this.actionIcon,
     this.labelTitle,
    this.titleWidget,

    this.actionOnPressed,
  }) : super(
          leading: haveBackButton
              ? Builder(
                builder: (context) {
                  return IconButton(
                      icon: const CustomIcon(
                        svgIcon: AppImages.icBack,
                        size: IconSize.small,
                      ),
                      onPressed: () => context.router.pop(),
                    );
                }
              )
              : null,
          actions: actionIcon != null
              ? [
                  IconButton(
                      icon: CustomIcon(
                        svgIcon: actionIcon,
                        size: IconSize.small,
                      ),
                      onPressed: actionOnPressed)
                ]
              : null,
          title: labelTitle != null ? Text(
            labelTitle,
            style: CustomTextStyle.bold(color: AppColors.black, fontSize: FontSize.veryLarge),
          ) : titleWidget,
          centerTitle: true,
          backgroundColor: Colors.white,
        );
}
