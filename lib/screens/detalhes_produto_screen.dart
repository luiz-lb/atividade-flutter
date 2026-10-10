import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 6 - Detalhes do Produto
///
/// Column
///  ├─ Expanded -> Container (imagem principal)
///  ├─ SizedBox (altura: 12)
///  ├─ Row
///  │   └─ Expanded (4x) -> Container (miniaturas)
///  ├─ SizedBox (altura: 12)
///  ├─ Container (título)
///  ├─ SizedBox (altura: 8)
///  ├─ Container (preço)
///  ├─ SizedBox (altura: 12)
///  ├─ Expanded -> Container (descrição)
///  ├─ SizedBox (altura: 16)
///  └─ Container (botão)
class DetalhesProdutoScreen extends StatelessWidget {
  const DetalhesProdutoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('6 - Detalhes do Produto')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.detalhesProduto),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Expanded -> Container (imagem principal)
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: AppStyle.decoracaoBloco,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              spacing: 12,
              children: List.generate(
                4,
                // Expanded (4x) -> Container (miniaturas)
                (index) => Expanded(
                  child: Container(
                    height: 64,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Container (título)
            Container(
              width: 160,
              height: 18,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 8),
            // Container (preço)
            Container(
              width: 100,
              height: 16,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 12),
            // Expanded -> Container (descrição)
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: AppStyle.decoracaoBlocoClaro,
              ),
            ),
            const SizedBox(height: 16),
            // Container (botão)
            Container(
              width: double.infinity,
              height: 48,
              decoration: AppStyle.decoracaoBloco,
            ),
          ],
        ),
      ),
    );
  }
}
