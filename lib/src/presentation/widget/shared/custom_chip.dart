import 'package:casino_test/src/core/constants.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final String? prefix;
  final Color? color;

  CustomChip({
    Key? key,
    required this.label,
    this.prefix,
    this.color,
  }) : super(key: key);

  Color? get _backgroundColor => color!.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _backgroundColor ?? Colors.grey,
        borderRadius: BorderRadius.circular(Sizing.kSizingMultiple * 2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefix != null) ...[
            Container(
              padding: EdgeInsets.all(Sizing.kSizingMultiple),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _backgroundColor ?? Colors.grey,
              ),
              child: Text(prefix!),
            ),
          ],
          SizedBox(width: Sizing.kSizingMultiple),
          Padding(
            padding: EdgeInsets.only(
              top: Sizing.kSizingMultiple * .5,
              bottom: Sizing.kSizingMultiple * .5,
              right: Sizing.kSizingMultiple * 1.5,
            ),
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: color ?? Colors.black,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
