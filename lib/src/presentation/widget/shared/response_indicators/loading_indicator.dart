import 'package:casino_test/src/core/constants.dart';
import 'package:flutter/material.dart';

class LoadingIndicatorType {
  final Widget child;

  const LoadingIndicatorType._({required this.child});

  factory LoadingIndicatorType.circularProgressIndicator(
      {bool isSmallSize = false, double? progress}) {
    return LoadingIndicatorType._(
      child: SizedBox(
        height: isSmallSize ? Sizing.kProgressIndicatorSizeSmall : null,
        width: isSmallSize ? Sizing.kProgressIndicatorSizeSmall : null,
        child: CircularProgressIndicator(
          value: progress,
          strokeWidth: Sizing.kProgressIndicatorStrokeWidth,
          // backgroundColor: ColorTheme.kAccentColor,
        ),
      ),
    );
  }

  factory LoadingIndicatorType.linearProgressIndicator() {
    return LoadingIndicatorType._(
      child: LinearProgressIndicator(
        color: ColorTheme.kSecondaryColor,
        backgroundColor: ColorTheme.kTransparentColor,
      ),
    );
  }
}

class LoadingIndicator extends StatelessWidget {
  final LoadingIndicatorType type;
  final Alignment? alignment;

  const LoadingIndicator({Key? key, required this.type, this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(alignment: alignment ?? Alignment.center, child: type.child);
  }
}
