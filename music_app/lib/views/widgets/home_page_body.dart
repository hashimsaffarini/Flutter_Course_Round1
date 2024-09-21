import 'package:flutter/material.dart';
import 'package:music_app/model/music_model.dart';
import 'package:music_app/views/widgets/music_item.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        musicListModel.length,
        (index) {
          return MusicItem(
            model: musicListModel[index],
          );
        },
      ),
    );
  }
}
