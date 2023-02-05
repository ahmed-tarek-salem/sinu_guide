import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sinu_guide/presentation/home/widgets/custom_progress_indicator.dart';

class CustomCachedImage extends StatelessWidget {
  final String? imageUrl;
  const CustomCachedImage({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return imageUrl == null
        ? const SizedBox.shrink()
        : CachedNetworkImage(
            imageUrl: imageUrl!,
            height: 150.sp,
            width: 150.sp,
            fit: BoxFit.fitWidth,
            progressIndicatorBuilder: (context, url, progress) => SizedBox(
              height: 150.sp,
              width: 150.sp,
              child: const CustomProgressIndicator(size: 20),
            ),
          );
  }
}
