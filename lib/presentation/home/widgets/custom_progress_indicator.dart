import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sinu_guide/constants/app_colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double size;
  const CustomProgressIndicator({super.key, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitSpinningLines(
        color: AppColors.purple,
        size: size,
      ),
    );
  }
}
