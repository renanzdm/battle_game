import 'package:bonfire/bonfire.dart';

class KnightSprite {
  SimpleDirectionAnimation knightAnimations() => SimpleDirectionAnimation(
        idleLeft: idleLeft('knight_idle_left.png'),
        idleRight: idleRight('knight_idle_right.png'),
        runLeft: runLeft('knight_run_left.png'),
        runRight: runRight('knight_run_right.png'),
      );

  Future<SpriteAnimation> idleRight(String fileName) => SpriteAnimation.load(
        'players/knight/$fileName',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  Future<SpriteAnimation> idleLeft(String fileName) => SpriteAnimation.load(
        'players/knight/$fileName',
        SpriteAnimationData.sequenced(
          amount: 1,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  Future<SpriteAnimation> runRight(String fileName) => SpriteAnimation.load(
        'players/knight/$fileName',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );

  Future<SpriteAnimation> runLeft(String fileName) => SpriteAnimation.load(
        'players/knight/$fileName',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
        ),
      );
}
