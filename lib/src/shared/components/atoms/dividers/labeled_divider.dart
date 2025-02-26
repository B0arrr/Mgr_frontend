import 'package:flutter/material.dart';
import 'package:mgr_frontend/src/core/theme/dimens.dart';
import 'package:mgr_frontend/src/shared/extensions/context_extensions.dart';

class LabeledDivider extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry labelPadding;
  final Color? labelBackgroundColor;
  final Alignment labelAlignment;

  const LabeledDivider({
    super.key,
    required this.label,
    this.labelPadding = const EdgeInsets.symmetric(horizontal: Dimens.spacing),
    this.labelBackgroundColor,
    this.labelAlignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: labelAlignment,
      children: [
        const Divider(),
        Container(
          padding: labelPadding,
          color: labelBackgroundColor ?? context.colorScheme.surface,
          child: Text(
            label,
            style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurface.withValues(alpha: .8)),
          ),
        )
      ],
    );
  }
}
