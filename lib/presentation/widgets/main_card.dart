import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/search_details/detailed_view.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.movieImage,
    required this.movieName,
  }) : super(key: key);
  final String movieImage;
  final movieName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchDetailedScreen(
                movieName: movieName,
                moviePoster: movieImage,
              ),
            ));
      },
      child: movieImage == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(movieImage),
                ),
              ),
            ),
    );
  }
}
