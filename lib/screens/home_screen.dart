import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Início')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.home),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Atividade de Layouts',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppStyle.azulEscuro,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Abra o menu lateral (☰) ou toque em um dos itens abaixo '
            'para ver cada layout.',
          ),
          const SizedBox(height: 16),
          for (final item in itensMenu)
            Card(
              elevation: 0,
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: AppStyle.borda),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: AppStyle.azulEscuro,
                  child: Text(
                    '${item.numero}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(item.titulo),
                trailing: Icon(item.icone, color: AppStyle.azulEscuro),
                onTap: () => Navigator.pushNamed(context, item.rota),
              ),
            ),
        ],
      ),
    );
  }
}
