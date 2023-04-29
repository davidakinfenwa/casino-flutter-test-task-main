import 'package:casino_test/src/core/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmptyResponseIndicatorType extends Equatable {
  final Widget child;

  const EmptyResponseIndicatorType._({required this.child});

  factory EmptyResponseIndicatorType.simple(
    BuildContext context, {
    required Function onActionCallback,
    required String message,
    Widget? action,
  }) {
    return EmptyResponseIndicatorType._(
      child: GestureDetector(
        onTap: () {
          HapticFeedback.vibrate();
          onActionCallback();
        },
        child: Row(
          children: [
            const Icon(Icons.dashboard),
            const SizedBox(width: Sizing.kSizingMultiple),
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: message,
                  style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                        color: ColorTheme.kBlackColor,
                      ),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            action ??
                Text(
                  'Retry',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: ColorTheme.kPrimaryColor),
                ),
          ],
        ),
      ),
    );
  }

  @override
  List<Object> get props => [child];
}

class EmptyResponseIndicator extends StatelessWidget {
  final EmptyResponseIndicatorType type;
  final Color? backgroundColor;

  const EmptyResponseIndicator(
      {Key? key, required this.type, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // elevation: Sizing.kItemElevation,
      borderRadius: BorderRadius.circular(Sizing.kSizingMultiple),
      color: backgroundColor ?? ColorTheme.kGreyColorLight,
      child: Container(
        padding: const EdgeInsets.all(Sizing.kSizingMultiple * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizing.kSizingMultiple),
        ),
        child: type.child,
      ),
    );
  }
}
