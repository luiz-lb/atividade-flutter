import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';

/// Menu lateral com um link para cada tela da atividade.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.rotaAtual});

  final String rotaAtual;

  void _navegar(BuildContext context, String rota) {
    final navigator = Navigator.of(context);
    navigator.pop(); // fecha o drawer
    if (rota == rotaAtual) return;

    if (rota == AppRoutes.home) {
      navigator.popUntil(ModalRoute.withName(AppRoutes.home));
    } else {
      // Mantém sempre a tela inicial embaixo, para o botão "voltar" funcionar.
      navigator.pushNamedAndRemoveUntil(
        rota,
        ModalRoute.withName(AppRoutes.home),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: AppStyle.azulEscuro),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.phone_android, color: Colors.white, size: 40),
                SizedBox(height: 12),
                Text(
                  'Atividade de Layouts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Início'),
            selected: rotaAtual == AppRoutes.home,
            onTap: () => _navegar(context, AppRoutes.home),
          ),
          const Divider(),
          for (final item in itensMenu)
            ListTile(
              leading: CircleAvatar(
                radius: 14,
                backgroundColor: AppStyle.azulEscuro,
                child: Text(
                  '${item.numero}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(item.titulo),
              trailing: Icon(item.icone),
              selected: rotaAtual == item.rota,
              onTap: () => _navegar(context, item.rota),
            ),
        ],
      ),
    );
  }
}
