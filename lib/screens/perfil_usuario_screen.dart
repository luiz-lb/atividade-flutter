import 'package:flutter/material.dart';

import '../routes.dart';
import '../theme/app_style.dart';
import '../widgets/app_drawer.dart';

/// 3 - Perfil do Usuário
///
/// Column
///  ├─ Container (capa)
///  ├─ Center
///  │   └─ CircleAvatar (avatar)
///  ├─ SizedBox (altura: 16)
///  ├─ Container (nome)
///  ├─ Container (username)
///  ├─ Row
///  │   └─ Expanded (3x)
///  │       └─ Container (informação)
///  ├─ SizedBox (altura: 16)
///  └─ Expanded
///      └─ Container (sobre mim)
class PerfilUsuarioScreen extends StatelessWidget {
  const PerfilUsuarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('3 - Perfil do Usuário')),
      drawer: const AppDrawer(rotaAtual: AppRoutes.perfilUsuario),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Stack só para o avatar ficar sobreposto à capa, como na imagem.
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  // Container (capa)
                  Container(
                    height: 168,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                  // Center -> CircleAvatar (avatar)
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: AppStyle.blocoClaro,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Container (nome)
            Container(
              width: 200,
              height: 20,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 8),
            // Container (username)
            Container(
              width: 140,
              height: 14,
              decoration: AppStyle.decoracaoBlocoClaro,
            ),
            const SizedBox(height: 16),
            Row(
              spacing: 16,
              children: List.generate(
                3,
                // Expanded (3x) -> Container (informação)
                (index) => Expanded(
                  child: Container(
                    height: 72,
                    decoration: AppStyle.decoracaoBloco,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Barra de título "sobre mim" (como aparece na imagem)
            Container(
              height: 32,
              decoration: AppStyle.decoracaoBloco,
            ),
            const SizedBox(height: 12),
            // Expanded -> Container (sobre mim)
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
