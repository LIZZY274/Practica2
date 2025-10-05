import 'package:flutter/material.dart';
import '../molecules/stat_card.dart';
import '../molecules/profile_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  void _handleEditProfile(BuildContext context, String userName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.edit, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Text('Editando perfil: $userName'),
            ),
          ],
        ),
        backgroundColor: Colors.red.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _handleStatCardTap(BuildContext context, String cardName, String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.analytics, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(
              child: Text('$cardName: $value'),
            ),
          ],
        ),
        backgroundColor: Colors.red.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Profesional'),
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, color: Colors.red.shade700, size: 24),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Molécula 1: ProfileCard',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            ProfileCard(
              userName: 'Ricardo Martínez',
              userRole: 'Desarrollador Flutter',
              onEditProfile: () => _handleEditProfile(context, 'Ricardo Martínez'),
            ),
            const SizedBox(height: 12),
            ProfileCard(
              userName: 'Ana López',
              userRole: 'Diseñadora UX/UI',
              onEditProfile: () => _handleEditProfile(context, 'Ana López'),
              cardColor: Colors.red.shade50,
              avatarBackgroundColor: Colors.red.shade700,
              elevation: 8,
            ),
            const SizedBox(height: 12),
            ProfileCard(
              userName: 'Carlos Ruiz',
              userRole: 'Product Manager',
              onEditProfile: () => _handleEditProfile(context, 'Carlos Ruiz'),
              cardColor: Colors.grey.shade100,
              avatarBackgroundColor: Colors.red.shade400,
              showEditButton: false,
              elevation: 2,
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Icon(Icons.analytics, color: Colors.red.shade700, size: 24),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Molécula 2: StatCard',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              childAspectRatio: 0.80,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                StatCard(
                  title: 'Proyectos Activos',
                  value: '4',
                  icon: Icons.auto_awesome,
                  iconColor: Colors.orange.shade700,
                  onTap: () => _handleStatCardTap(context, 'Proyectos Activos', '4'),
                ),
                StatCard(
                  title: 'Tareas Completadas',
                  value: '95',
                  icon: Icons.check_circle_outline,
                  iconColor: Colors.white,
                  backgroundColor: Colors.red.shade700,
                  textColor: Colors.white,
                  onTap: () => _handleStatCardTap(context, 'Tareas Completadas', '95'),
                ),
                StatCard(
                  title: 'Mensajes Nuevos',
                  value: '12',
                  icon: Icons.email_outlined,
                  iconColor: Colors.red.shade700,
                  elevation: 12,
                  onTap: () => _handleStatCardTap(context, 'Mensajes Nuevos', '12'),
                ),
                StatCard(
                  title: 'Progreso General',
                  value: '85%',
                  icon: Icons.trending_up,
                  iconColor: Colors.red.shade200,
                  backgroundColor: Colors.red.shade900,
                  textColor: Colors.white,
                  onTap: () => _handleStatCardTap(context, 'Progreso General', '85%'),
                ),
                StatCard(
                  title: 'Clientes Satisfechos',
                  value: '98%',
                  icon: Icons.sentiment_very_satisfied,
                  iconColor: Colors.red.shade600,
                  elevation: 1,
                  onTap: () => _handleStatCardTap(context, 'Clientes Satisfechos', '98%'),
                ),
                StatCard(
                  title: 'Metas Alcanzadas',
                  value: '7/10',
                  icon: Icons.flag,
                  iconColor: Colors.white,
                  backgroundColor: Colors.red.shade600,
                  textColor: Colors.white,
                  elevation: 6,
                  onTap: () => _handleStatCardTap(context, 'Metas Alcanzadas', '7/10'),
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
