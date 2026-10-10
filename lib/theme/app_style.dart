import 'package:flutter/material.dart';

/// Cores e decorações que reproduzem o estilo "wireframe" azul da atividade.
class AppStyle {
  AppStyle._();

  static const azulEscuro = Color(0xFF1F4FA3);
  static const fundo = Color(0xFFEFF4FD);
  static const bloco = Color(0xFF8FB0EC);
  static const blocoClaro = Color(0xFFC5D7F7);
  static const borda = Color(0xFFD3E0F7);

  /// Bloco principal (imagens, cards, gráficos).
  static const decoracaoBloco = BoxDecoration(
    color: bloco,
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  /// Bloco claro (textos, barras, títulos).
  static const decoracaoBlocoClaro = BoxDecoration(
    color: blocoClaro,
    borderRadius: BorderRadius.all(Radius.circular(6)),
  );

  /// Superfície branca com borda (cards, campo de busca, itens).
  static final decoracaoSuperficie = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    border: Border.all(color: borda),
  );
}
