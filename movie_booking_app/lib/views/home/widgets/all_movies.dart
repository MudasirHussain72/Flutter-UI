import 'dart:math';
import 'package:flutter/material.dart';
import 'package:movie_booking_app/models/most_popular_tv_shows_model/most_popular_tv_shows_model.dart';
import 'package:movie_booking_app/views/home/widgets/skeleton_movie_card_widget.dart';
import 'package:movie_booking_app/configs/components/movie_card.dart';

class AllMovies extends StatelessWidget {
  final List<TvShow>? movies;
  final bool isLoading;

  const AllMovies({
    super.key,
    this.movies,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final movieCount = isLoading ? 20 : movies?.length ?? 0;
    final columns = sqrt(movieCount).toInt();

    return SizedBox(
      width: columns * 320.0,
      child: Wrap(
        children: List.generate(
          movieCount,
          (index) => Transform.translate(
            offset: Offset(0, index.isEven ? 240 : 0),
            child: isLoading
                ? const SkeletonMovieCard()
                : MovieCard(
                    movie: movies![index],
                  ),
          ),
        ),
      ),
    );
  }
}
