import 'package:flutter/material.dart';
import '../atomd/custom_text.dart';
import '../atomd/custom_button_base.dart';

class ProfileCard extends StatelessWidget {
  final String userName;
  final String userRole;
  final VoidCallback onEditProfile;

  const ProfileCard({
    Key? key,
    required this.userName,
    required this.userRole,
    required this.onEditProfile,
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
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.indigo,
              child: Icon(Icons.person, size: 35, color: Colors.white),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: userName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  CustomText(
                    text: userRole,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            CustomButtonBase(
              label: 'Editar',
              onPressed: onEditProfile,
              backgroundColor: Colors.amber,
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}