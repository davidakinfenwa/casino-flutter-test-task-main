import 'package:casino_test/src/core/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/util/loading_indicator.dart';

class ButtonType<T> {
  final Widget child;

  const ButtonType._({required this.child});

  factory ButtonType.regularButton({
    required Function() onTap,
    required String label,
    Widget? customLabel,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    Color? textColor,
    bool? isLoadingMode,
    bool? isDisabledMode,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _isLoadingMode = isLoadingMode ?? false;
          final _isDisabledMode = isDisabledMode ?? false;

          final _backgroundColor = _isLoadingMode || _isDisabledMode
              ? ColorTheme.kGreyColor
              : backgroundColor ?? Theme.of(context).primaryColor;

          final _textColor = textColor ?? ColorTheme.kWhiteColor;

          final _borderRadius =
              borderRadius ?? BorderRadius.circular(Sizing.kBorderRadius);

          return SizedBox(
            height: Sizing.kButtonHeight,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: _backgroundColor,
                        elevation: Sizing.kButtonElevation,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap:
                              _isLoadingMode || _isDisabledMode ? null : onTap,
                          borderRadius: _borderRadius,
                          child: Container(
                            height: Sizing.kButtonHeight,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                            ),
                            child: customLabel ??
                                Text(
                                  label,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: _textColor),
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: Sizing.kSizingMultiple * 2),
                          child: _isLoadingMode
                              ? LoadingIndicator(
                                  alignment: Alignment.centerRight,
                                  type: LoadingIndicatorType
                                      .circularProgressIndicator(
                                          isSmallSize: true),
                                )
                              : Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  factory ButtonType.regularFlatButton({
    required Function() onTap,
    required String label,
    Color? textColor,
    Color? backgroundColor,
    bool? isLoadingMode,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _isLoadingMode = isLoadingMode ?? false;

          final _backgroundColor = _isLoadingMode
              ? ColorTheme.kGreyColor
              : backgroundColor ?? ColorTheme.kTransparentColor;
          final _textColor = textColor ?? ColorTheme.kWhiteColor;

          final _borderRadius = BorderRadius.circular(Sizing.kBorderRadius);

          return SizedBox(
            height: Sizing.kButtonHeight,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: _backgroundColor,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap: onTap,
                          borderRadius: _borderRadius,
                          child: Container(
                            height: Sizing.kButtonHeight,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                            ),
                            child: Text(
                              label,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: _textColor),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: Sizing.kSizingMultiple * 2),
                          child: _isLoadingMode
                              ? LoadingIndicator(
                                  alignment: Alignment.centerRight,
                                  type: LoadingIndicatorType
                                      .circularProgressIndicator(
                                          isSmallSize: true),
                                )
                              : Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  factory ButtonType.withBorderButton({
    required Function() onTap,
    required String label,
    Color? textColor,
    BorderRadius? borderRadius,
    bool? isLoadingMode,
    Color? borderColor,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _isLoadingMode = isLoadingMode ?? false;

          final _backgroundColor = _isLoadingMode
              ? ColorTheme.kGreyColor
              : ColorTheme.kTransparentColor;
          final _textColor = textColor ?? ColorTheme.kBlackColor;

          final _borderRadius =
              borderRadius ?? BorderRadius.circular(Sizing.kBorderRadius);

          return SizedBox(
            height: Sizing.kButtonHeight,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: _backgroundColor,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap: onTap,
                          borderRadius: _borderRadius,
                          child: Container(
                            height: Sizing.kButtonHeight,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                              border: Border.all(
                                width: Sizing.kButtonBorderWidth,
                                color:
                                    borderColor ?? ColorTheme.kGreyColorLight,
                              ),
                            ),
                            child: Text(
                              label,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: _textColor),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                              right: Sizing.kSizingMultiple * 2),
                          child: _isLoadingMode
                              ? LoadingIndicator(
                                  alignment: Alignment.centerRight,
                                  type: LoadingIndicatorType
                                      .circularProgressIndicator(
                                          isSmallSize: true),
                                )
                              : Container(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  factory ButtonType.withArrowIndicatorButton({
    required Function() onTap,
    required String label,
    Color? backgroundColor,
    Color? textColor,
    BorderRadius? borderRadius,
    bool? isLoadingMode,
    Widget? indicator,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _isLoadingMode = isLoadingMode ?? false;

          final _backgroundColor = _isLoadingMode
              ? Theme.of(context).primaryColor
              : backgroundColor ?? Theme.of(context).primaryColor;

          final _textColor = textColor ?? ColorTheme.kWhiteColor;

          final _borderRadius =
              borderRadius ?? BorderRadius.circular(Sizing.kBorderRadius);

          return SizedBox(
            height: Sizing.kButtonHeight,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: _backgroundColor,
                        elevation: Sizing.kButtonElevation,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap: _isLoadingMode ? null : onTap,
                          borderRadius: _borderRadius,
                          child: Container(
                            height: Sizing.kButtonHeight,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                            ),
                            child: Text(
                              label,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: _textColor),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: _isLoadingMode ? null : onTap,
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: Sizing.kSizingMultiple * 2),
                            child: _isLoadingMode
                                ? LoadingIndicator(
                                    alignment: Alignment.centerRight,
                                    type: LoadingIndicatorType
                                        .circularProgressIndicator(
                                            isSmallSize: true),
                                  )
                                : indicator ??
                                    Icon(
                                      Icons.arrow_forward,
                                      color: _textColor,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  factory ButtonType.customButton({
    required Function() onTap,
    required Widget child,
    bool? withBorderRadius,
    BorderRadius? borderRadius,
    Color? backgroundColor,
    bool? elevated,
    double? height,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _backgroundColor =
              backgroundColor ?? Theme.of(context).primaryColor;

          final _elevation =
              elevated ?? false ? Sizing.kButtonElevation : Sizing.kZeroValue;

          final _height = height ?? Sizing.kButtonHeight;

          final _borderRadius = borderRadius ??
              BorderRadius.circular(
                withBorderRadius ?? true
                    ? Sizing.kBorderRadius
                    : Sizing.kZeroValue,
              );

          return SizedBox(
            height: _height,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: _backgroundColor,
                        elevation: _elevation,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap: onTap,
                          borderRadius: _borderRadius,
                          child: Container(
                            height: _height,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                            ),
                            child: child,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
  factory ButtonType.customButtonWithCallback({
    required T option,
    required T selectedValue,
    required Function(T) onSelectOption,
    required Widget child,
    bool? elevated,
    Color? backgroundColor,
  }) {
    return ButtonType._(
      child: Builder(
        builder: (context) {
          final _backgroundColor = backgroundColor ?? ColorTheme.kGreyColor;

          final _elevation =
              elevated ?? false ? Sizing.kButtonElevation : Sizing.kZeroValue;

          final _activeColor = ColorTheme.kSecondaryColor;

          final _borderRadius = BorderRadius.circular(Sizing.kBorderRadius);

          return SizedBox(
            height: Sizing.kButtonHeight,
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Material(
                        color: selectedValue == option
                            ? _activeColor
                            : _backgroundColor,
                        elevation: _elevation,
                        borderRadius: _borderRadius,
                        child: InkWell(
                          onTap: () => onSelectOption(option),
                          borderRadius: _borderRadius,
                          child: Container(
                            height: Sizing.kButtonHeight,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorTheme.kTransparentColor,
                              borderRadius: _borderRadius,
                            ),
                            child: child,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final ButtonType type;

  const CustomButton({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type.child;
  }
}
