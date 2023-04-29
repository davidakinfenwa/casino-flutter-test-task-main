import 'package:casino_test/src/core/constants.dart';
import 'package:casino_test/src/core/exceptions/exceptions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ErrorIndicatorType extends Equatable {
  final Widget child;

  const ErrorIndicatorType._({required this.child});

  factory ErrorIndicatorType.simple({
    required ExceptionCode? code,
    required String? message,
    bool? showRetryAction,
    bool? showCode,
    Function? onRetryCallback,
    MainAxisSize? mainAxisSize,
  }) {
    final _showCode = showCode ?? true;

    return ErrorIndicatorType._(
      child: Builder(
        builder: (context) {
          return Row(
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            children: [
              const Icon(Icons.error),
              const SizedBox(width: Sizing.kSizingMultiple),
              Expanded(
                child: Text.rich(
                    TextSpan(
                      text: !_showCode
                          ? ''
                          : code == ExceptionCode.UNDEFINED
                              ? ''
                              : '${code.toString()} \n',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      children: <InlineSpan>[
                        TextSpan(
                          text: message,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyLarge!
                              .copyWith(
                                color: ColorTheme.kBlackColor,
                              ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left),
              ),
              if (showRetryAction ?? true) ...[
                GestureDetector(
                  onTap: () {
                    HapticFeedback.vibrate();
                    onRetryCallback!();
                  },
                  child: Text(
                    'Retry',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: ColorTheme.kPrimaryColor),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }

  factory ErrorIndicatorType.custom({required Widget child}) {
    return ErrorIndicatorType._(
      child: child,
    );
  }

  @override
  List<Object> get props => [child];
}

class ErrorIndicator extends StatelessWidget {
  final ErrorIndicatorType type;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  const ErrorIndicator({
    Key? key,
    required this.type,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  Color get _backgroundColor => backgroundColor ?? ColorTheme.kGreyColorLight;
  BorderRadius get _borderRadius =>
      borderRadius ?? BorderRadius.circular(Sizing.kSizingMultiple);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: _backgroundColor,
      borderRadius: _borderRadius,
      // elevation: Sizing.kItemElevation,
      child: Container(
        padding: EdgeInsets.all(Sizing.kSizingMultiple * 2),
        decoration: BoxDecoration(
          // color: _backgroundColor,
          borderRadius: _borderRadius,
        ),
        child: type.child,
      ),
    );
  }
}
