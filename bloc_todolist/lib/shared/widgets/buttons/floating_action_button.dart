import 'package:flutter/material.dart';

import '../../config/config.dart';

class CustomFloatingActionButton extends FloatingActionButton {
  final void Function()? onPressed;
  CustomFloatingActionButton({this.onPressed})
      : super(
          backgroundColor: AppColors.nightRider,
          onPressed: onPressed,
          child: const Icon(Icons.add),
        );
}
