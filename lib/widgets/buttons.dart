import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  const ButtonRounded(
      {Key key,
      @required this.text,
      @required this.onTap,
      this.fontSize = 20,
      this.onDoubleTap,
      this.icon,
      this.fontWeight = FontWeight.w700,
      this.buttonColor,
      this.textColor,
      this.splashColor,
      this.borderRadious = 10,
      this.shadow = false})
      : super(key: key);

  final double fontSize;
  final String text;
  final Function onTap;
  final IconData icon;
  final Function onDoubleTap;
  final FontWeight fontWeight;
  final Color buttonColor;
  final Color textColor;
  final Color splashColor;
  final double borderRadious;
  final bool shadow;

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    Color primaryColor =
        buttonColor == null ? currentTheme.primaryColor : buttonColor;
    Color secondaryColor =
        buttonColor == null ? currentTheme.primaryColorLight : textColor;
    Color thirdColor =
        splashColor == null ? currentTheme.primaryColorDark : splashColor;
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: onTap == null ? Colors.blueGrey : primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadious)),
          boxShadow: shadow
              ? [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.5))
                ]
              : []),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: thirdColor,
          borderRadius: BorderRadius.circular(borderRadious),
          onTap: onTap,
          onDoubleTap: onDoubleTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon == null
                  ? Container()
                  : Container(
                      margin: EdgeInsets.symmetric(horizontal: fontSize * 0.9),
                      child: Icon(
                        icon,
                        size: fontSize * 1.1,
                        color: secondaryColor,
                      )

                      // Icon(
                      //   icon,
                      //   color: secondaryColor,
                      //   size: fontSize * 1.2,
                      // ),
                      ),
              icon == null
                  ? Container()
                  : Container(
                      height: fontSize * 1.5,
                      width: 1,
                      color: secondaryColor,
                    ),
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: secondaryColor,
                      fontWeight: fontWeight,
                      fontSize: fontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
