import 'package:flutter/material.dart';
import '../atoms/custom_text.dart';
import '../atoms/custom_button_base.dart';

class ProfileCard extends StatelessWidget {
  final String userName;
  final String userRole;
  final VoidCallback onEditProfile;
  final String? avatarUrl;
  final Color? avatarBackgroundColor;
  final Color? cardColor;
  final double? elevation;
  final bool showEditButton;

  const ProfileCard({
    Key? key,
    required this.userName,
    required this.userRole,
    required this.onEditProfile,
    this.avatarUrl,
    this.avatarBackgroundColor,
    this.cardColor,
    this.elevation = 4,
    this.showEditButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: avatarBackgroundColor ?? Colors.indigo,
              backgroundImage: avatarUrl != null ? NetworkImage(avatarUrl!) : null,
              child: avatarUrl == null
                  ? const Icon(Icons.person, size: 35, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: userName,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  CustomText(
                    text: userRole,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (showEditButton)
              CustomButtonBase(
                label: 'Editar',
                onPressed: onEditProfile,
                backgroundColor: Colors.amber,
                textColor: Colors.black87,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
          ],
        ),
      ),
    );
  }
}