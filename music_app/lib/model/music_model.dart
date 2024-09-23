import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicModel {
  final Color color;
  final String sound;

  MusicModel({required this.color, required this.sound});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

List<MusicModel> musicListModel = [
  MusicModel(color: Colors.black, sound: 'assets/sounds/note1.wav'),
  MusicModel(color: Colors.red, sound: 'assets/sounds/note2.wav'),
  MusicModel(color: Colors.green, sound: 'assets/sounds/note3.wav'),
  MusicModel(color: Colors.blue, sound: 'assets/sounds/note4.wav'),
  MusicModel(color: Colors.yellow, sound: 'assets/sounds/note5.wav'),
  MusicModel(color: Colors.purple, sound: 'assets/sounds/note6.wav'),
  MusicModel(color: Colors.orange, sound: 'assets/sounds/note7.wav'),
];
