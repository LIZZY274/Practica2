import 'package:flutter/material.dart';
import '../atoms/custom_icon.dart';
import '../atoms/custom_text.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final VoidCallback? onTap;

  const StatCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
    this.iconColor = Colors.blue,
    this.backgroundColor,
    this.textColor,
    this.elevation = 4,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIcon(
                icon: icon,
                color: iconColor,
                size: 40,
              ),
              const SizedBox(height: 12),
              CustomText(
                text: value,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: textColor,
                ),
              ),
              const SizedBox(height: 4),
              CustomText(
                text: title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: textColor?.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}