import 'package:netflix_clone/core/core_infrastructures.dart';
import 'package:netflix_clone/infrastructure/api_key.dart';

class ApiEndPoints {
  //* base URL is API site main url
  static const downlaod =
      "$baseUrl/trending/all/day?api_key=e3ce3b98381f05dd00c6e1eeabf49c02#";
  static const search =
      "https://api.themoviedb.org/3/search/movie?api_key=$apiKey";
}
