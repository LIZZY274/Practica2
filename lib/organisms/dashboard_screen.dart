import 'package:flutter/material.dart';
import '../molecules/stat_card.dart';
import '../molecules/profile_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  void _handleEditProfile() {
    debugPrint('¡Perfil Editado!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard (Organismo)'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProfileCard(
              userName: 'Ricardo M.',
              userRole: 'Desarrollador Flutter',
              onEditProfile: _handleEditProfile,
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Estadísticas Clave',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                StatCard(
                  title: 'Proyectos Activos',
                  value: '4',
                  icon: Icons.auto_awesome,
                  iconColor: Colors.orange,
                ),
                StatCard(
                  title: 'Tareas Completadas',
                  value: '95',
                  icon: Icons.check_circle_outline,
                  iconColor: Colors.green,
                ),
                StatCard(
                  title: 'Mensajes Nuevos',
                  value: '12',
                  icon: Icons.email_outlined,
                  iconColor: Colors.red,
                ),
                StatCard(
                  title: 'Progreso General',
                  value: '85%',
                  icon: Icons.trending_up,
                  iconColor: Colors.blue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}