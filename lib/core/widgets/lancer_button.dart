import 'package:flutter/material.dart';
import 'package:medicall_project/core/constant/colors.dart';

enum LCButtonType { filled, filledReverse, outline, outlineTransparan, text, gradient, textWithIcon }

class LCButton extends StatelessWidget {
  final Widget Function(BuildContext context, TextStyle style) childBuilder;
  final LCButtonType type;
  final EdgeInsets? padding;
  final VoidCallback? onPressed;
  final Color? buttonColor;
  final Color? colorOutline;
  final Color? shadowColor;
  final bool enabled;
  final fontSize = 16.0;
  final double? radiusButton;
  final Widget? icon;
  final Color? colorTextIcon;
  const LCButton(
      {Key? key,
      this.type = LCButtonType.filled,
      this.padding,
      required this.childBuilder,
      this.onPressed,
      this.buttonColor,
      this.radiusButton,
      this.colorTextIcon,
      this.icon,
      this.colorOutline,
      this.shadowColor,
      this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case LCButtonType.filled:
        return _buildFilled(context);
      case LCButtonType.filledReverse:
        return _buildFilled(context, true);
      case LCButtonType.outline:
        return _buildOutline(context);
      case LCButtonType.outlineTransparan:
        return _buildOutlineTransparan(context);
      case LCButtonType.text:
        return _buildText(context);
      case LCButtonType.gradient:
        return _buildGradient(context);
      case LCButtonType.textWithIcon:
        return _buildTextIcon(context);
    }
  }

  Widget _buildFilled(BuildContext context, [bool reverse = false]) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: shadowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusButton ?? 10.0),
        ),
      ).copyWith(backgroundColor: ButtonColorState(reverse ? AppColors.white : buttonColor ?? AppColors.green, AppColors.grayOnly)),
      onPressed: enabled ? onPressed : null,
      child: Container(
        padding: padding,
        child: childBuilder(
            context, TextStyle(color: enabled ? (reverse ? AppColors.green : AppColors.white) : AppColors.grayMedium, fontWeight: FontWeight.bold, fontSize: fontSize, fontFamily: 'MavenPro')),
      ),
    );
  }

  Widget _buildOutline(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.0,
            color: enabled && colorOutline != null
                ? colorOutline!
                : enabled && colorOutline == null
                    ? AppColors.green
                    : AppColors.grayMedium.withOpacity(0.3),
          ),
          borderRadius: BorderRadius.circular(radiusButton ?? 10.0),
        ),
      ).copyWith(backgroundColor: ButtonColorState(buttonColor ?? AppColors.white, AppColors.white), shadowColor: ButtonColorState(shadowColor, shadowColor)),
      onPressed: enabled ? onPressed : null,
      child: Container(
        padding: padding,
        child: childBuilder(
            context,
            TextStyle(
                color: enabled && colorOutline != null
                    ? colorOutline!
                    : enabled && colorOutline == null
                        ? AppColors.green
                        : AppColors.whiteGray.withAlpha(90),
                fontWeight: FontWeight.bold,
                fontSize: fontSize,
                fontFamily: 'MavenPro')),
      ),
    );
  }

  Widget _buildOutlineTransparan(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1.0, color: AppColors.white),
          borderRadius: BorderRadius.circular(radiusButton ?? 10.0),
        ),
      ).copyWith(backgroundColor: ButtonColorState(Colors.transparent, Colors.transparent)),
      onPressed: enabled ? onPressed : null,
      child: Container(
        padding: padding,
        child: childBuilder(context, TextStyle(color: enabled ? AppColors.white : AppColors.white.withAlpha(90), fontWeight: FontWeight.bold, fontSize: fontSize, fontFamily: 'MavenPro')),
      ),
    );
  }

  Widget _buildText(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: padding,
          shape: RoundedRectangleBorder(side: const BorderSide(style: BorderStyle.none, width: 0), borderRadius: BorderRadius.circular(radiusButton ?? 10.0))),
      onPressed: enabled ? onPressed : null,
      child: Container(
        padding: padding,
        child: childBuilder(context, TextStyle(color: AppColors.green, fontWeight: FontWeight.bold, fontSize: fontSize, fontFamily: 'MavenPro')),
      ),
    );
  }

  Widget _buildGradient(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 5.0)],
        gradient: LinearGradient(
          colors: enabled ? AppColors.color_gradient_button : [AppColors.grayOnly, AppColors.grayOnly],
        ),
        borderRadius: BorderRadius.circular(radiusButton ?? 5),
      ),
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(padding),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusButton ?? 5))),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: childBuilder(context, TextStyle(color: enabled ? AppColors.white : AppColors.grayMedium, fontWeight: FontWeight.bold, fontSize: fontSize, fontFamily: 'MavenPro')),
      ),
    );
  }

  Widget _buildTextIcon(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: padding,
          shape: RoundedRectangleBorder(side: const BorderSide(style: BorderStyle.none, width: 0), borderRadius: BorderRadius.circular(radiusButton ?? 10.0))),
      onPressed: enabled ? onPressed : null,
      icon: icon ?? Container(),
      label: childBuilder(context, TextStyle(color: colorTextIcon, fontWeight: FontWeight.bold, fontSize: fontSize, fontFamily: 'MavenPro')),
    );
  }
}

class ButtonColorState extends MaterialStateProperty<Color?> {
  ButtonColorState(this.primary, this.onSurface);

  final Color? primary;
  final Color? onSurface;

  @override
  Color? resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.disabled)) return onSurface;
    return primary;
  }
}
