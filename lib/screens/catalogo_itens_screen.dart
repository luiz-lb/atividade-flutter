import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 5 - Catálogo de Itens
///
/// Column
///  ├─ Row (busca)
///  │   ├─ Expanded -> Container (campo)
///  │   └─ Container (ícone)
///  ├─ SizedBox (altura: 16)
///  ├─ Expanded
///  │   └─ SingleChildScrollView
///  │       └─ Wrap
///  │           └─ Container (item) (repetidos)
///  └─ Container (rodapé)
class CatalogoItensScreen extends StatelessWidget {
  const CatalogoItensScreen({super.key});

  static const _espaco = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5 - Catálogo de Itens')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.catalogoItens),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row (busca)
            Row(
              children: [
                // Expanded -> Container (campo) — TextField apenas visual
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: AppStyle.decoracaoSuperficie,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Buscar itens...',
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Container (ícone)
                Container(
                  width: 48,
                  height: 48,
                  decoration: AppStyle.decoracaoBlocoClaro,
                  child: const Icon(Icons.tune, color: AppStyle.azulEscuro),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    // 3 itens por linha, como na imagem.
                    final larguraItem =
                        (constraints.maxWidth - _espaco * 2) / 3;
                    return Wrap(
                      spacing: _espaco,
                      runSpacing: _espaco,
                      children: List.generate(
                        12,
                        (index) => _item(larguraItem),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 12),
            // Container (rodapé)
            SizedBox(
              height: 48,
              child: Row(
                children: [
                  Expanded(
                    child: Container(decoration: AppStyle.decoracaoBloco),
                  ),
                  const SizedBox(width: 12),
                  Container(width: 72, decoration: AppStyle.decoracaoBloco),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Container (item)
  Widget _item(double largura) {
    return Container(
      width: largura,
      padding: const EdgeInsets.all(8),
      decoration: AppStyle.decoracaoSuperficie,
      child: Column(
        children: [
          // imagem do item
          Container(
            height: largura - 16,
            decoration: AppStyle.decoracaoBlocoClaro,
          ),
          const SizedBox(height: 8),
          // nome do item
          Container(
            height: 12,
            decoration: AppStyle.decoracaoBloco,
          ),
        ],
      ),
    );
  }
}
