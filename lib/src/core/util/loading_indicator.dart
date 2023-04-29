import 'package:flutter/material.dart';


import 'constants.dart';
import 'custom_typography.dart';


class OverlayLoadingIndicator extends StatelessWidget {
  const OverlayLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomTypography.kLightGreyColor.withOpacity(.50),
      child: Center(
        child: LoadingIndicatorType.circularProgressIndicator().child,
      ),
    );
  }
}

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
        color: CustomTypography.kSecondaryColor,
        backgroundColor: CustomTypography.kTransparentColor,
      ),
    );
  }

  factory LoadingIndicatorType.overlay(
      {required Widget child, bool isLoading = false}) {
    return LoadingIndicatorType._(
      child: LayoutBuilder(
        builder: (context, constraint) {
          return SizedBox(
            height: constraint.maxHeight,
            width: constraint.maxWidth,
            child: Stack(
              children: [
                child,
                if (isLoading) ...[
                  const OverlayLoadingIndicator(),
                ],
              ],
            ),
          );
        },
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
