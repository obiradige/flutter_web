import 'package:flutter/material.dart';
import 'package:palet/utils/constants/colors.dart';
import 'package:palet/utils/constants/text_styles.dart';

enum MainButtonType {
  primary,
  secondary,
}

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.gradient,
    this.color,
    this.textColor,
    this.elevation,
    this.borderRadius,
    this.height,
    this.width,
    required this.label,
    this.onPressed,
    this.isLoading = false,
    this.indicatorColor,
    this.indicatorStrokeWidth = 2,
    this.type = MainButtonType.primary,
    this.textStyle,
    this.icon,
    this.boxShadow,
  });

  final Gradient? gradient;
  final Color? color;
  final Color? textColor;
  final double? elevation;
  final double? borderRadius;
  final double? height;
  final double? width;
  final String label;
  final VoidCallback? onPressed;
  final bool? isLoading;
  final Color? indicatorColor;
  final double? indicatorStrokeWidth;
  final MainButtonType? type;
  final TextStyle? textStyle;
  final IconData? icon;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: width ?? double.infinity,
      height: height ?? 50,
      decoration: BoxDecoration(
        color: type == MainButtonType.primary
            ? color ?? Theme.of(context).primaryColor
            : Colors.transparent,
        gradient: type == MainButtonType.primary
            ? gradient != null
                ? const LinearGradient(
                    colors: [mActiveGreen, mActiveBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )
                : null
            : null,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(8),
        border: type == MainButtonType.secondary
            ? Border.all(
                color: color ?? Theme.of(context).primaryColor,
              )
            : null,
      ),
      constraints: BoxConstraints(
        minWidth: width ?? 150,
        minHeight: height ?? 50,
      ),
      child: isLoading! == true
          ? Center(
              child: CircularProgressIndicator(
                strokeWidth: indicatorStrokeWidth!,
                valueColor: AlwaysStoppedAnimation<Color>(
                  indicatorColor ?? Colors.white,
                ),
              ),
            )
          : Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPressed,
                child: icon != null
                    ? Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: type == MainButtonType.primary
                                  ? textColor ?? Colors.white
                                  : color ?? Theme.of(context).primaryColor,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              label,
                              style: textStyle != null
                                  ? textStyle!
                                  : mButton1.copyWith(
                                      color: type == MainButtonType.primary
                                          ? textColor ?? Colors.white
                                          : color ??
                                              Theme.of(context).primaryColor,
                                    ),
                            ),
                          ],
                        ),
                      )
                    : Center(
                        child: Text(
                          label,
                          style: textStyle != null
                              ? textStyle!
                              : mButton1.copyWith(
                                  color: type == MainButtonType.primary
                                      ? textColor ?? Colors.white
                                      : color ?? Theme.of(context).primaryColor,
                                ),
                        ),
                      ),
              ),
            ),
    );
  }
}
