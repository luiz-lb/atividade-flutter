import 'package:flutter/material.dart';

import 'routes.dart';
import 'screens/catalogo_itens_screen.dart';
import 'screens/dashboard_simples_screen.dart';
import 'screens/detalhes_produto_screen.dart';
import 'screens/galeria_horizontal_screen.dart';
import 'screens/home_screen.dart';
import 'screens/lista_cards_screen.dart';
import 'screens/perfil_usuario_screen.dart';
import 'theme/app_style.dart';

void main() {
  runApp(const AtividadeLayoutsApp());
}

class AtividadeLayoutsApp extends StatelessWidget {
  const AtividadeLayoutsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade de Layouts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppStyle.azulEscuro),
        scaffoldBackgroundColor: AppStyle.fundo,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppStyle.azulEscuro,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.listaCards: (context) => const ListaCardsScreen(),
        AppRoutes.galeriaHorizontal: (context) =>
            const GaleriaHorizontalScreen(),
        AppRoutes.perfilUsuario: (context) => const PerfilUsuarioScreen(),
        AppRoutes.dashboardSimples: (context) => const DashboardSimplesScreen(),
        AppRoutes.catalogoItens: (context) => const CatalogoItensScreen(),
        AppRoutes.detalhesProduto: (context) => const DetalhesProdutoScreen(),
      },
    );
  }
}
