import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRotatingCircle(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}
