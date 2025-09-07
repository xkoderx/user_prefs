import 'package:flutter/material.dart';
import 'package:user_prefs/shared/preferences.dart';
import 'package:user_prefs/widgets/drawer.dart';

class Home extends StatelessWidget {
  static const String routerName = 'Home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: Drawwer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Darkmode: ${Preferences.darkMode}'),
            Divider(),
            Text('Género: ${Preferences.genero}'),
            Divider(),
            Text('Usuario: ${Preferences.nombre}'),
            Divider(),
          ],
        ));
  }
}
