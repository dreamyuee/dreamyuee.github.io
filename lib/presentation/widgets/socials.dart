import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aerium/core/utils/functions.dart';
import 'package:aerium/presentation/widgets/horizontal_bar.dart';
import 'package:aerium/values/values.dart';

class Socials extends StatelessWidget {
  Socials({
    this.isHorizontal = false,
    this.isVertical = false,
    this.alignment,
    this.color = AppColors.accentColor2,
    this.barColor = AppColors.accentColor2,
    this.crossAxisAlignment,
  }) : assert(isHorizontal == false || isVertical == false,
            'Both isHorizontal and isVertical cannot be true');

  final bool isVertical;
  final bool isHorizontal;
  final Color color;
  final Color barColor;
  final Alignment? alignment;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return isVertical
        ? Container(
            child: Column(
              crossAxisAlignment: crossAxisAlignment!,
              children: [
                // SocialButton(
                //   icon: FontAwesomeIcons.github,
                //   alignment: alignment,
                //   onPressed: () {
                //     Functions.launchUrl(StringConst.GITHUB_URL);
                //   },
                //   color: color,
                // ),
                // HorizontalBar(
                //   width: Sizes.WIDTH_32,
                //   color: barColor,
                //   margin: EdgeInsets.symmetric(vertical: Sizes.MARGIN_4),
                // ),
                SocialButton(
                  icon: FontAwesomeIcons.linkedin,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.LINKED_IN_URL);
                  },
                  color: color,
                ),

                HorizontalBar(
                  width: Sizes.WIDTH_40,
                  color: barColor,
                  margin: EdgeInsets.symmetric(vertical: Sizes.MARGIN_4),
                ),
                SocialButton(
                  icon: FontAwesomeIcons.instagram,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.INSTAGRAM_URL);
                  },
                  color: color,
                ),
                
                HorizontalBar(
                  width: Sizes.WIDTH_40,
                  color: barColor,
                  margin: EdgeInsets.symmetric(vertical: Sizes.MARGIN_4),
                ),
                SocialButton(
                  icon: FontAwesomeIcons.envelope,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.EMAIL_URL);
                  },
                  color: color,
                ),
                // HorizontalBar(
                //   width: Sizes.WIDTH_32,
                //   color: barColor,
                //   margin: EdgeInsets.symmetric(vertical: Sizes.MARGIN_4),
                // ),
                // SocialButton(
                //   icon: FontAwesomeIcons.telegramPlane,
                //   alignment: alignment,
                //   onPressed: () {
                //     Functions.launchUrl(StringConst.TELEGRAM_URL);
                //   },
                //   color: color,
                // ),
              ],
            ),
          )
        : IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SocialButton(
                //   icon: FontAwesomeIcons.github,
                //   alignment: alignment,
                //   onPressed: () {
                //     Functions.launchUrl(StringConst.GITHUB_URL);
                //   },
                //   color: color,
                // ),
                // VerticalDivider(
                //   width: Sizes.WIDTH_8,
                //   thickness: 2,
                //   color: barColor,
                // ),
                SocialButton(
                  icon: FontAwesomeIcons.linkedin,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.LINKED_IN_URL);
                  },
                  color: color,
                ),
                VerticalDivider(
                  width: Sizes.WIDTH_8,
                  thickness: 2,
                  color: barColor,
                ),
                SocialButton(
                  icon: FontAwesomeIcons.instagram,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.INSTAGRAM_URL);
                  },
                  color: color,
                ),
                VerticalDivider(
                  width: Sizes.WIDTH_8,
                  thickness: 2,
                  color: barColor,
                ),

                SocialButton(
                  icon: FontAwesomeIcons.envelope,
                  alignment: alignment,
                  onPressed: () {
                    Functions.launchUrl(StringConst.EMAIL_URL);
                  },
                  color: color,
                ),
                // VerticalDivider(
                //   width: Sizes.WIDTH_8,
                //   thickness: 2,
                //   color: barColor,
                // ),
                // SocialButton(
                //   icon: FontAwesomeIcons.twitter,
                //   alignment: alignment,
                //   onPressed: () {
                //     Functions.launchUrl(StringConst.TWITTER_URL);
                //   },
                //   color: color,
                // ),
                // VerticalDivider(
                //   width: Sizes.WIDTH_8,
                //   thickness: 2,
                //   color: barColor,
                // ),
                // SocialButton(
                //   icon: FontAwesomeIcons.telegramPlane,
                //   alignment: alignment,
                //   onPressed: () {
                //     Functions.launchUrl(StringConst.TELEGRAM_URL);
                //   },
                //   color: color,
                // ),
              ],
            ),
          );
  }
}

class SocialButton extends StatefulWidget {
  SocialButton({
    this.padding = const EdgeInsets.all(Sizes.PADDING_0),
    this.onPressed,
    this.color = AppColors.accentColor2,
    this.icon = FontAwesomeIcons.twitter,
    this.iconSize = Sizes.ICON_SIZE_24,
    this.alignment = Alignment.center,
  });

  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;
  final Color color;
  final IconData icon;
  final double iconSize;
  final Alignment? alignment;

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool _isHovered = false; // Track hover state

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true; // Set hover state to true
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false; // Reset hover state
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // Smooth transition
        padding: widget.padding,
        decoration: BoxDecoration(
          color: _isHovered
              ? widget.color.withOpacity(0.2) // Light background on hover
              : Colors.transparent, // Transparent by default
          shape: BoxShape.circle,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black26, // Shadow color
                    blurRadius: 8.0, // Blur radius
                    offset: Offset(0, 4), // Shadow position
                  ),
                ]
              : [],
        ),
        child: IconButton(
          onPressed: widget.onPressed,
          alignment: widget.alignment!,
          icon: Icon(
            widget.icon,
            color: widget.color, // Default icon color
            size: _isHovered ? widget.iconSize * 1.2 : widget.iconSize, // Scale icon on hover
          ),
        ),
      ),
    );
  }
}
