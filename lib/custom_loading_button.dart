library custom_loading_button;

import 'package:flutter/material.dart';

///  CustomLoadingButton.
class CustomLoadingButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? disabledColor;
  final Color? activeColor;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final bool isLoading;
  final double height;
  final Widget Function(BuildContext context)? buildCustomTitle;
  final Widget Function(BuildContext context)? buildCustomLoading;

  CustomLoadingButton(
      {this.text,
      required this.isLoading,
      this.buildCustomTitle,
      this.buildCustomLoading,
      this.onPressed,
      this.textStyle,
      this.height = 55.0,
      this.borderRadius,
      this.disabledColor,
      this.activeColor})
      : assert(
            (buildCustomTitle != null && text == null) ||
                (buildCustomTitle == null && text != null),
            'When the buildCustom is different from null the text value must be nul and look at'),
        assert(height >= 50.0);

  _buildTitle(BuildContext context) {
    if (buildCustomTitle != null) return buildCustomTitle!(context);

    return Text(
      text!,
      style: textStyle,
    );
  }

  _buildLoading(BuildContext context) {
    if (buildCustomLoading != null) return buildCustomLoading!(context);

    return Container(
      width: 24.0,
      height: 24.0,
      margin: EdgeInsets.all(8.0),
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
        valueColor: AlwaysStoppedAnimation<Color>(
            activeColor ?? Theme.of(context).accentColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: MaterialButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        disabledColor: disabledColor ?? Colors.grey[200],
        elevation: 0,
        color: activeColor ?? Theme.of(context).accentColor,
        height: height,
        minWidth: double.infinity / 2,
        child: (isLoading) ? _buildLoading(context) : _buildTitle(context),
        onPressed: (isLoading) ? null : onPressed,
      ),
    );
  }
}
