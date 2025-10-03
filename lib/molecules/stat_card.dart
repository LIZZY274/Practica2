import 'package:flutter/material.dart';
import '../atomd/custom_icon.dart';
import '../atomd/custom_text.dart';

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color iconColor;

  const StatCard({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
    this.iconColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
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
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            CustomText(
              text: title,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}