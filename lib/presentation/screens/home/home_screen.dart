import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/menu/menu_items.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter + Material 3"),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuitemList = appMenuItems[index];
        return _CustomListTile(menuitemList: menuitemList);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuitemList,
  });

  final MenuIten menuitemList;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuitemList.icon, color: colors.primary),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuitemList.title),
      subtitle: Text(menuitemList.subtitle),
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(
        //builder: (context) => const CardsScreen(),
        // ));

        Navigator.pushNamed(
          context, menuitemList.url
        );
      },
    );
  }
}
