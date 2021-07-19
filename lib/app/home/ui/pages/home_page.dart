import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/config/ui/theme/ui/stores/theme_store.dart';
import 'package:flutter_spotify_clone/core/common/injected/module.dart';
import 'package:flutter_spotify_clone/core/common/utils/screen_utils.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ThemeStore themeStore = getIt.get<ThemeStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: themeStore.toggleTheme,
        child: themeStore.isDark
            ? Icon(Icons.brightness_high)
            : Icon(Icons.brightness_2),
      ),
      body: Container(
        decoration: new BoxDecoration(
            gradient: RadialGradient(
          center: Alignment(-1, -1.7),
          colors: [
            const Color(0xFF3A9DBC),
            const Color(0xFF121212),
          ],
          radius: 1.5,
        )),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 5.h,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  const Color(0xFF323232).withOpacity(0.8),
                  const Color(0xFF2A2A2A).withOpacity(0.8),
                  const Color(0xFF272727).withOpacity(0.8),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Row(
              children: [
                Image.network(
                  "https://cdn.crello.com/common/b96ff32d-99d2-4a84-a88c-f653cd1d3559_450.jpg",
                ),
                Text("Oi"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
