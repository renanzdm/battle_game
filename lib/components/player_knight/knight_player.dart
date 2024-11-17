import 'package:bonfire/bonfire.dart';

import '../../main.dart';
import 'knight_sprite.dart';

class KnightPlayer extends SimplePlayer with BlockMovementCollision {
  KnightPlayer(Vector2 position)
      : super(
          position: position,
          size: Vector2(
            tileSize,
            tileSize,
          ),
          life: 100,
          speed: 100,
          animation: KnightSprite().knightAnimations(),
        );
  @override
  Future<void> onLoad() async {
    add(RectangleHitbox(size: size * 0.7, position: Vector2(4, 4)));
    return super.onLoad();
  }
}
