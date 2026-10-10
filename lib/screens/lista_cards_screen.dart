import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 1 - Lista de Cards
///
/// Scaffold
///  ├─ AppBar
///  └─ body: ListView.builder
///      └─ itemBuilder: Card
///          └─ Row
///              ├─ Container (imagem)
///              └─ Column
///                  ├─ Container (título)
///                  └─ Container (subtítulo)
class ListaCardsScreen extends StatelessWidget {
  const ListaCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1 - Lista de Cards')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.listaCards),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: AppStyle.borda),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  // Container (imagem)
                  Container(
                    width: 72,
                    height: 72,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container (título)
                        Container(
                          height: 16,
                          decoration: AppStyle.decoracaoBlocoClaro,
                        ),
                        const SizedBox(height: 10),
                        // Container (subtítulo)
                        Container(
                          width: 120,
                          height: 12,
                          decoration: AppStyle.decoracaoBlocoClaro,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
