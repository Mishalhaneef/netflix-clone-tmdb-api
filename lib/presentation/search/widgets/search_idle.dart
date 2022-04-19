import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/search_details/detailed_view.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';

class SearchIDLE extends StatelessWidget {
  const SearchIDLE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppTitle(text: "Top Searches"),
        kHeight20,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error While Getting Data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('No Search Result'),
                );
              } else {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return movie.title == null
                        ? const SizedBox()
                        : TopSearchItemTile(
                            movieName: movie.title,
                            moviePoster: '$imageAppentURL${movie.posterPath}',
                          );
                  },
                  separatorBuilder: (context, index) =>
                      state.idleList[index].title == null
                          ? const SizedBox()
                          : kHeight20,
                  itemCount: state.idleList.length,
                );
              }
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    Key? key,
    required this.movieName,
    required this.moviePoster,
  }) : super(key: key);

  final movieName;
  final String moviePoster;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: kRadius,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(moviePoster),
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            movieName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            if (moviePoster.isEmpty) {
              return;
            }
            if (movieName == null) {
              return;
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchDetailedScreen(
                  movieName: movieName,
                  moviePoster: moviePoster,
                ),
              ),
            );
          },
          icon: const Icon(
            CupertinoIcons.play_circle,
            size: 40,
          ),
        )
      ],
    );
  }
}
