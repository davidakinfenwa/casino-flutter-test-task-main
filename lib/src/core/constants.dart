
import 'package:flutter/material.dart';

import 'util/custom_typography.dart';

const BASE_URL = 'https://rickandmortyapi.com/api';
const INITIAL_PAGE = 1;

class ApiRequests {
  static const kRequestTimeout = 10; // seconds
}

class Endpoints {
  static const kCharacters = 'character';
}

class Sizing {
  static const kZeroValue = 0.0;
  static const kItemElevation = 1.0;
  static const kMaxItemHeight = 150.0;
  static const kMaxSubItemPadding = 30.0;
  static const kBorderRadius = 4.0;
  static const kItemBorderRadius = 10.0;
  static const kSizingMultiple = 8.0;
  static const kDebounceDuration = 500;
  static const kBottomSheet = 650.0;
  static const kScrollThreshold = 200;
  static const kProgressIndicatorSizeSmall = 20.0;
  static const kProgressIndicatorStrokeWidth = 2.0;

  // buttons
  static final kButtonHeight = 48.0;
  static const kButtonBorderWidth = 1.0;
  static const kButtonElevation = 2.0;
}

class CustomTypography {
  static const kHeadline5 = 20.0;


  
}

class ColorTheme {
  static final kPrimaryColor = Colors.blue;
  static final kIndicatorColor = Colors.green;
  static final kSecondaryColor = Colors.amber[800];
  static final kErrorColor = Colors.red;
  static final kGreyColor = Colors.grey;
  static final kGreyColorLight = Colors.grey.withOpacity(.40);
  static final kSubtitleTextColor = Colors.grey;
  static final kBlackColor = Colors.black;
  static final kBlackColor_54 = Colors.black54;

  static final kWhiteColor = Colors.white;
  static final kTransparentColor = Colors.transparent;
  static final kBackgroundColor = ColorUtil.colorFromHex('#FFf2f5fb');
}
