import 'package:battle_game/main.dart';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import '../components/player_knight/knight_player.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final player = KnightPlayer(Vector2(tileSize * 5, tileSize * 5));
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      // player: player,
      // cameraConfig: CameraConfig(target: player),
      playerControllers: [
        Joystick(
          directional: JoystickDirectional(),
        )
      ],
      map: WorldMapByTiled(
        WorldMapReader.fromAsset('mapas/mapa1.json'),
      ),
    );
  }
}
