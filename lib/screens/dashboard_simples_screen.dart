import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 4 - Dashboard Simples
///
/// Column
///  ├─ Container (topo)
///  ├─ SizedBox (altura: 12)
///  ├─ Row
///  │   └─ Expanded (4x) -> Container (ícone)
///  ├─ SizedBox (altura: 16)
///  ├─ Row
///  │   └─ Expanded (2x) -> Container (card)
///  ├─ SizedBox (altura: 16)
///  ├─ Container (barra)
///  ├─ SizedBox (altura: 16)
///  └─ Expanded -> Container (gráfico)
class DashboardSimplesScreen extends StatelessWidget {
  const DashboardSimplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('4 - Dashboard Simples')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.dashboardSimples),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Container (topo)
            Container(
              height: 48,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 12),
            Row(
              spacing: 12,
              children: List.generate(
                4,
                // Expanded (4x) -> Container (ícone)
                (index) => Expanded(
                  child: Container(
                    height: 64,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              spacing: 16,
              children: List.generate(
                2,
                // Expanded (2x) -> Container (card)
                (index) => Expanded(
                  child: Container(
                    height: 150,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Container (barra)
            Container(
              height: 20,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 16),
            // Expanded -> Container (gráfico)
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: AppStyle.decoracaoBloco,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
