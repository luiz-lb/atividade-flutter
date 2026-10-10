import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 2 - Galeria Horizontal
///
/// Column
///  ├─ Container (cabeçalho)
///  ├─ SizedBox (altura: 8)
///  ├─ SingleChildScrollView (horizontal)
///  │   └─ Row
///  │       └─ Container (imagem) (repetidos)
///  ├─ SizedBox (altura: 16)
///  ├─ Expanded
///  │   └─ Grid (2 colunas)
///  │       └─ Container (imagem) (repetidos)
///  └─ Container (rodapé)
class GaleriaHorizontalScreen extends StatelessWidget {
  const GaleriaHorizontalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('2 - Galeria Horizontal')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.galeriaHorizontal),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container (cabeçalho)
            Container(
              width: 110,
              height: 20,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  // Container (imagem) (repetidos)
                  (index) => Container(
                    width: 104,
                    height: 104,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: AppStyle.decoracaoBloco,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Barra de título da seção (como aparece na imagem)
            Container(
              height: 18,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: List.generate(
                  6,
                  // Container (imagem) (repetidos)
                  (index) => Container(decoration: AppStyle.decoracaoBloco),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Container (rodapé)
            Container(
              height: 24,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
          ],
        ),
      ),
    );
  }
}
