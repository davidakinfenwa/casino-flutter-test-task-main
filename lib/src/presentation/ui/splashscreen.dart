import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/util/constants.dart';
import '../../core/util/custom_typography.dart';
import '../../core/util/loading_indicator.dart';
import '../widget/shared/cache_network_image.dart';
import 'ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 30));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CharactersScreen(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomTypography.kDarkPrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
                    child: SizedBox(
              height: (Sizing.kSizingMultiple * 30).w,
              child: CacheNetworkImage(
                  imageUrl:
                      "https://rickandmortyapi.com/api/character/avatar/1.jpeg"),
            ))),
            LoadingIndicator(
                type: LoadingIndicatorType.linearProgressIndicator()),
          ],
        ));
  }
}
