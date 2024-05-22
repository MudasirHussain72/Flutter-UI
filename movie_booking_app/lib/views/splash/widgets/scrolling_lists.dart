import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:movie_booking_app/configs/app_images.dart';

class ScrollingList extends StatefulWidget {
  final int initialIndex;
  const ScrollingList({super.key, required this.initialIndex});

  @override
  State<ScrollingList> createState() => _ScrollingListState();
}

class _ScrollingListState extends State<ScrollingList> {
  late ScrollController _controller;
  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset == _controller.position.minScrollExtent) {
        _forwardScroll();
      } else if (_controller.offset == _controller.position.maxScrollExtent) {
        _backwardScroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _forwardScroll();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _forwardScroll() {
    final startPosition = _controller.offset;
    final endPosition = _controller.position.maxScrollExtent;
    scheduleMicrotask(() {
      _controller.animateTo(startPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 10 + widget.initialIndex + 2),
          curve: Curves.linear);
    });
  }

  void _backwardScroll() {
    final startPosition = _controller.offset;
    final endPosition = _controller.position.minScrollExtent;
    scheduleMicrotask(() {
      _controller.animateTo(startPosition == endPosition ? 0 : endPosition,
          duration: Duration(seconds: 10 + widget.initialIndex + 2),
          curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Transform.rotate(
      angle: pi / 20,
      child: SizedBox(
        height: height * 0.65,
        width: width * 0.34,
        child: ListView.builder(
          controller: _controller,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.only(top: 10, left: 8, right: 8),
            height: height * 0.2,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(
                    contentImages[index + widget.initialIndex],
                  ),
                  fit: BoxFit.contain),
            ),
          ),
        ),
      ),
    );
  }
}
