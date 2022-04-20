import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class SearchDetailedScreen extends StatelessWidget {
  const SearchDetailedScreen({
    Key? key,
    required this.movieName,
    required this.moviePoster,
  }) : super(key: key);

  final String? movieName;
  final String moviePoster;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text(movieName!),
      ),
      body: Center(
        child: moviePoster == null
            ? Text(imageUrl)
            : Image(
                image: NetworkImage(moviePoster),
              ),
      ),
    );
  }
}
