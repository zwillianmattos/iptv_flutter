import 'package:flutter/material.dart';

import '../core/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Drawer(
          elevation: 0,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Text(
                          "New TV",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      DrawerListTile(
                        icon: const Icon(Icons.search),
                        cb: () {},
                        index: 0,
                        title: 'Buscar',
                      ),
                      DrawerListTile(
                        icon: const Icon(Icons.home),
                        cb: () {},
                        index: 0,
                        title: 'Inicio',
                      ),
                      DrawerListTile(
                        icon: const Icon(Icons.movie),
                        cb: () {},
                        index: 0,
                        title: 'Filmes',
                      ),
                      DrawerListTile(
                        icon: const Icon(Icons.tv),
                        cb: () {},
                        index: 0,
                        title: 'IPTV',
                      ),
                      DrawerListTile(
                        icon: const Icon(Icons.settings),
                        cb: () {},
                        index: 0,
                        title: 'Configurações',
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  width: 1,
                )
              ]),
        ),
        Expanded(
          child: Scaffold(
            extendBody: false,
            body: Column(
              children: [
                Card(
                  child: Text("asd"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
