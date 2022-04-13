import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
    required String movieImage,
  })  : _moonKnightImage = movieImage,
        super(key: key);

  final String _moonKnightImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            _moonKnightImage,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: CupertinoColors.black.withOpacity(0.3),
            radius: 20,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.volume_off,
                  size: 20,
                  color: kWhite,
                )),
          ),
        ),
      ],
    );
  }
}
