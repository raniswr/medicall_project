import 'package:flutter/material.dart';
import 'package:medicall_project/core/constant/colors.dart';

enum LancerAppBarLeading { back, close, none, custom }

class LancerAppBar extends StatelessWidget {
  final String title;
  final Widget? widget;
  final double height;
  final Widget? background;
  final bool includeSafeArea;
  final LancerAppBarLeading leadingType;
  final Widget? leading;
  final List<Widget>? actions;
  final TextStyle? textStyle;
  final Color? colorLeading;
  final Color? appBarColor;
  final bool? centerTitle;

  const LancerAppBar(
      {Key? key,
      required this.title,
      this.widget,
      this.height = 56.0,
      this.background,
      this.includeSafeArea = true,
      this.leadingType = LancerAppBarLeading.back,
      this.leading,
      this.textStyle,
      this.colorLeading,
      this.actions,
      this.centerTitle,
      this.appBarColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatedHeight = includeSafeArea ? (height + MediaQuery.of(context).padding.top) : height;
    final widgets = <Widget>[
      background != null
          ? background!
          : Container(
              color: appBarColor,
            )
    ];
    if (widget != null) widgets.add(widget!);
    return SizedBox(
        height: calculatedHeight,
        child: AppBar(
          leadingWidth: 60,
          leading: _getLeading(context),
          centerTitle: centerTitle ?? true,
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textStyle ?? const TextStyle(color: AppColors.textBlack, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Stack(
            children: widgets,
          ),
          actions: actions,
          backgroundColor: appBarColor ?? Colors.white,
          elevation: 0,
        ));
  }

  Widget? _getLeading(BuildContext context) {
    action() async {
      Navigator.maybePop(context);
    }

    switch (leadingType) {
      case LancerAppBarLeading.back:
        return IconButton(
          icon: Icon(Icons.arrow_back_sharp, color: colorLeading != null ? colorLeading! : AppColors.green),
          onPressed: action,
        );
      case LancerAppBarLeading.close:
        return Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
          InkWell(
            onTap: action,
            child: const Padding(
              padding: EdgeInsets.all(8),
            ),
          )
        ]);
      case LancerAppBarLeading.custom:
        return leading;
      default:
        return Container();
    }
  }
}
