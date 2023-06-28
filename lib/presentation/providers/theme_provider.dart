import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//bool
final isDarkModeProvider = StateProvider((ref) => false);

// Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//entero
final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  /* El estado = new AppTheme(); generamos la instancia de la clase donde las propiedades y 
  valores por defecto son asignadas al estado de la clase */
  ThemeNotifier() : super(AppTheme());

  toogleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  changeColor(int selectedColor) {
    state = state.copyWith(selectedColor: selectedColor);
  }
}
