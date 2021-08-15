import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spotify_clone/app/home/ui/controller/home_controller.dart';
import 'package:flutter_spotify_clone/app/home/ui/widgets/albums_table.dart';
import 'package:flutter_spotify_clone/app/home/ui/widgets/horizontal_card.dart';
import 'package:flutter_spotify_clone/config/ui/theme/ui/stores/theme_store.dart';
import 'package:flutter_spotify_clone/core/common/injected/module.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ThemeStore themeStore = getIt<ThemeStore>();
  late HomeController controller = getIt<HomeController>();

  @override
  void initState() {
    controller.fetchAlbums();
    super.initState();
  }

  // decoration: new BoxDecoration(
  //           gradient: RadialGradient(
  //         center: Alignment(-1, -1.7),
  //         colors: [
  //           const Color(0xFF3A9DBC),
  //           const Color(0xFF121212),
  //         ],
  //         radius: 1.5,
  //       )),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: themeStore.toggleTheme,
        child: themeStore.isDark
            ? Icon(Icons.brightness_high)
            : Icon(Icons.brightness_2),
      ),
      body: SafeArea(child: _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) => Observer(builder: (_) {
        if (controller.isLoading) {
          return _buildProgressIndicator();
        } else {
          return _buildBody(context);
        }
      });

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AlbumsTable(
          albums: controller.albums,
        ),
      ],
    );
  }

  Widget _buildProgressIndicator() => Center(
        child: Container(
          height: 120.0,
          width: 120.0,
          child: Align(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              color: Colors.black45,
              backgroundColor: Colors.green,
              strokeWidth: 3,
            ),
          ),
        ),
      );
}
