import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static const home = '/';
  static const listaCards = '/lista-cards';
  static const galeriaHorizontal = '/galeria-horizontal';
  static const perfilUsuario = '/perfil-usuario';
  static const dashboardSimples = '/dashboard-simples';
  static const catalogoItens = '/catalogo-itens';
  static const detalhesProduto = '/detalhes-produto';
}

class ItemMenu {
  const ItemMenu({
    required this.numero,
    required this.titulo,
    required this.rota,
    required this.icone,
  });

  final int numero;
  final String titulo;
  final String rota;
  final IconData icone;
}

/// Itens usados no menu lateral e na tela inicial.
const itensMenu = [
  ItemMenu(
    numero: 1,
    titulo: 'Lista de Cards',
    rota: AppRoutes.listaCards,
    icone: Icons.view_list,
  ),
  ItemMenu(
    numero: 2,
    titulo: 'Galeria Horizontal',
    rota: AppRoutes.galeriaHorizontal,
    icone: Icons.photo_library,
  ),
  ItemMenu(
    numero: 3,
    titulo: 'Perfil do Usuário',
    rota: AppRoutes.perfilUsuario,
    icone: Icons.person,
  ),
  ItemMenu(
    numero: 4,
    titulo: 'Dashboard Simples',
    rota: AppRoutes.dashboardSimples,
    icone: Icons.dashboard,
  ),
  ItemMenu(
    numero: 5,
    titulo: 'Catálogo de Itens',
    rota: AppRoutes.catalogoItens,
    icone: Icons.grid_view,
  ),
  ItemMenu(
    numero: 6,
    titulo: 'Detalhes do Produto',
    rota: AppRoutes.detalhesProduto,
    icone: Icons.shopping_bag,
  ),
];
