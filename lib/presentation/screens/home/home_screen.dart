import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu/menu_items.dart';
import 'package:widget_app/presentation/widgets/side_menu.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  static const String name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("Flutter + Material 3"),
        ),
        body: const _HomeView(),
        drawer: SideMenu(
          scaffoldKey: scaffoldKey,
        ));
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

        //Navigator.pushNamed(
        //context, menuitemList.url
        // );

        context.push(menuitemList.url);
      },
    );
  }
}
