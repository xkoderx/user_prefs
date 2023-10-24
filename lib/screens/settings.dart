import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_prefs/providers/theme_provider.dart';
import 'package:user_prefs/shared/preferences.dart';
import 'package:user_prefs/widgets/drawer.dart';

class Settings extends StatefulWidget {
  static const String routerName = 'Settings';

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // bool Darkmode = false;
  // int genero = 1;
  // String nombre = 'Chulo papi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: Drawwer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              Divider(),
              SwitchListTile.adaptive(
                title: Text('Darkmode'),
                value: Preferences.darkMode,
                onChanged: (value) {
                  Preferences.darkMode = value;
                  final themeProvider =
                      Provider.of<ThemeProvider>(context, listen: false);
                  value
                      ? themeProvider.setDarkMode()
                      : themeProvider.setLightMode();
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                title: Text('Masculino'),
                value: 1,
                groupValue: Preferences.genero,
                onChanged: (value) {
                  Preferences.genero = value ?? 1;
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                title: Text('Femenino'),
                value: 2,
                groupValue: Preferences.genero,
                onChanged: (value) {
                  Preferences.genero = value ?? 2;
                  setState(() {});
                },
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onChanged: (value) {
                    Preferences.nombre = value;
                    setState(() {});
                  },
                  initialValue: 'By xkoderx',
                  decoration: const InputDecoration(
                      labelText: 'Nombre', helperText: 'Nickname'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
