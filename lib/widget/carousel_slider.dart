import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/model_movie.dart';
class CarouselImage extends StatefulWidget {
  final List<Movie> movies;
  CarouselImage({required this.movies});

  @override
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;


  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/'+m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding:EdgeInsets.all(20),
          ),

        ],
      ),
    );
  }
}
