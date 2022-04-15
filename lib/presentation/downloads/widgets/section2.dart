import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/downloads/widgets/dowloads_images.dart';

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /// calling getDownloadImage function to get images from api
    WidgetsBinding.instance!.addPostFrameCallback((timestamp) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    return Column(
      children: [
        const Text("Introducing Downloads for You",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kWhite,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
        kHeight,
        const Text(
          "We will download a personalised selection of movies and shows for you,  so there's \nalways something to watch on your \ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 139, 139, 139),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        //code for images
        BlocBuilder<DownloadsBloc, DownloadState>(
          builder: (context, state) {
            return SizedBox(
              height: size.width - 40,
              width: size.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: size.width * 0.37,
                          backgroundColor:
                              const Color.fromARGB(255, 66, 66, 66),
                        ),
                        DownloadsImageWIdget(
                          //image url from API.
                          //image appent URL is base url of trendng section of API
                          image:
// in state we setted a variable called download to get all
// list of download, so in that variable now a downlaod list availble
// with API Value. so we only have to call tis here and declare array
// position of Image. and declared posrerpath varibal to show poster image
// from API

//* now  all the trending movies image from the API is listed in the variable.
//* as its a list all photo store like array, so we have to declare the array/list position;
                              '$imageAppentURL${state.downloads[0].posterPath}',
                          margin: const EdgeInsets.only(left: 140),
                          angle: 15,
                        ),
                        DownloadsImageWIdget(
                          image:
                              '$imageAppentURL${state.downloads[1].posterPath}',
                          margin: const EdgeInsets.only(right: 140),
                          angle: -15,
                        ),
                        DownloadsImageWIdget(
                          image:
                              '$imageAppentURL${state.downloads[2].posterPath}',
                          margin: EdgeInsets.zero,
                        )
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}