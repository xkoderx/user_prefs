import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_prefs/providers/theme_provider.dart';
import 'package:user_prefs/screens/screens.dart';
import 'shared/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(darkMode: Preferences.darkMode),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routerName,
      routes: {
        Home.routerName: (_) => Home(),
        Settings.routerName: (_) => Settings(),
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
