# Atividade de Layouts — Flutter

Aplicativo com uma tela inicial e menu lateral (Drawer) que leva a 6 telas,
cada uma reproduzindo um dos layouts (wireframes) propostos na atividade.

| # | Tela | Arquivo |
|---|------|---------|
| 1 | Lista de Cards | `lib/screens/lista_cards_screen.dart` |
| 2 | Galeria Horizontal | `lib/screens/galeria_horizontal_screen.dart` |
| 3 | Perfil do Usuário | `lib/screens/perfil_usuario_screen.dart` |
| 4 | Dashboard Simples | `lib/screens/dashboard_simples_screen.dart` |
| 5 | Catálogo de Itens | `lib/screens/catalogo_itens_screen.dart` |
| 6 | Detalhes do Produto | `lib/screens/detalhes_produto_screen.dart` |

Cada tela segue a "estrutura sugerida" da atividade (comentada no topo de
cada arquivo), usando `Column`, `Row`, `Expanded`, `Container`, `SizedBox`,
`Padding`, `ListView.builder`, `SingleChildScrollView`, `GridView`, `Wrap`,
`CircleAvatar` e `TextField`.

## Estrutura

```
lib/
├─ main.dart              # MaterialApp, tema e rotas
├─ routes.dart            # nomes das rotas e itens do menu
├─ theme/app_style.dart   # cores e decorações dos blocos
├─ widgets/app_drawer.dart# menu lateral
└─ screens/               # tela inicial + 6 layouts
```

## Como executar

```bash
flutter pub get
flutter run
```

Testes (navegam por todas as telas pelo menu e verificam erros de layout):

```bash
flutter test
```
