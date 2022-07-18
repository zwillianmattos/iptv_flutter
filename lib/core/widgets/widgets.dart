import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final Widget? icon;
  final Function()? cb;
  final String title;
  final int index;
  final bool? selected;
  const DrawerListTile(
      {Key? key,
      required this.icon,
      required this.cb,
      required this.title,
      required this.index,
      this.selected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListTile(
        leading: icon ?? Container(),
        title: Text(title),
        onTap: cb,
        selected: selected ?? false,
        selectedTileColor: Theme.of(context).accentColor.withOpacity(0.1),
      ),
    );
  }
}
