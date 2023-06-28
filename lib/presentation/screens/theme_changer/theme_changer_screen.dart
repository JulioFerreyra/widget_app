import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const String name = "theme_changer_screen";
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme changer"),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
              },
              icon: isDarkMode
                  ? const Icon(Icons.light_mode)
                  : const Icon(Icons.dark_mode))
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColorIndex = ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
            title: Text(
              "Este color",
              style: TextStyle(color: color),
            ),
            subtitle: Text(
              "#${color.value}",
            ),
            activeColor: color,
            value: index,
            groupValue: selectedColorIndex,
            onChanged: (value) {
              ref.read(selectedColorProvider.notifier).state = index;
              //todo notificar cambio
            });
      },
    );
  }
}
