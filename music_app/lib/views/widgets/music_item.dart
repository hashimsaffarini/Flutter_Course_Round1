import 'package:flutter/material.dart';
import 'package:music_app/model/music_model.dart';

class MusicItem extends StatelessWidget {
  const MusicItem({
    super.key,
    required this.model,
  });
  final MusicModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          model.playSound();
        },
        child: Container(
          color: model.color,
        ),
      ),
    );
  }
}
