import 'package:flutter/material.dart';
import 'package:user_prefs/screens/screens.dart';

class Drawwer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawwerHeader(),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Home.routerName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline_outlined),
            title: Text('Gente'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text('Ajustes'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, Settings.routerName);
            },
          )
        ],
      ),
    );
  }
}

class _DrawwerHeader extends StatelessWidget {
  const _DrawwerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
