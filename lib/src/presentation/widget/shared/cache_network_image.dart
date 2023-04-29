import 'package:cached_network_image/cached_network_image.dart';
import 'package:casino_test/src/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/util/loading_indicator.dart';


class CacheNetworkImage extends StatelessWidget {
  final String imageUrl;

  const CacheNetworkImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
          ),
        ),
      ),
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          LoadingIndicator(
        type: LoadingIndicatorType.circularProgressIndicator(
            isSmallSize: true, progress: downloadProgress.progress),
      ),
      errorWidget: (context, url, error) => Icon(
        Icons.error,
        color: ColorTheme.kBlackColor_54,
      ),
    );
  }
}
