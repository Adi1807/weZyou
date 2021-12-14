import 'dart:async';

import 'package:flutter/material.dart';
import 'package:we_z_you/UI/indicator.dart';

class ImageSlideshow extends StatefulWidget {
  const ImageSlideshow({
    required this.children,
    this.width = double.infinity,
    this.height = 220,
    this.initialPage = 0,
    required this.indicatorColor,
    this.indicatorBackgroundColor = Colors.grey,
    required this.onPageChanged,
    required this.autoPlayInterval,
    this.isLoop = false,
  }) : super();

  /// The widgets to display in the [ImageSlideshow].
  ///
  /// Mainly intended for image widget, but other widgets can also be used.
  final List<Widget> children;

  /// Width of the [ImageSlideshow].
  final double width;

  /// Height of the [ImageSlideshow].
  final double height;

  /// The page to show when first creating the [ImageSlideshow].
  final int initialPage;

  /// The color to paint the indicator.
  final Color indicatorColor;

  /// The color to paint behind th indicator.
  final Color indicatorBackgroundColor;

  /// Called whenever the page in the center of the viewport changes.
  final ValueChanged<int> onPageChanged;

  /// Auto scroll interval.
  ///
  /// Do not auto scroll when you enter null or 0.
  final int autoPlayInterval;

  /// loop to return first slide.
  final bool isLoop;

  @override
  _ImageSlideshowState createState() => _ImageSlideshowState();
}

class _ImageSlideshowState extends State<ImageSlideshow> {
  final _currentPageNotifier = ValueNotifier(0);
  late PageController _pageController;

  void _onPageChanged(int index) {
    _currentPageNotifier.value = index;
    if (widget.onPageChanged != null) {
      final correctIndex = index % widget.children.length;
      widget.onPageChanged(correctIndex);
    }
  }

  void _autoPlayTimerStart() {
    /*Timer.periodic(
      Duration(milliseconds: widget.autoPlayInterval),
      (timer) {
        
      },
    );*/
    int nextPage;
    if (widget.children.length == _currentPageNotifier.value) {
      _currentPageNotifier.value = 0;
    }
    if (widget.isLoop) {
      nextPage = _currentPageNotifier.value + 1;
    } else {
      if (_currentPageNotifier.value < widget.children.length - 1) {
        nextPage = _currentPageNotifier.value + 1;
      } else {
        return;
      }
    }

    if (_pageController.hasClients) {
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: widget.initialPage,
    );
    _currentPageNotifier.value = widget.initialPage;

    if (widget.autoPlayInterval != null && widget.autoPlayInterval != 0) {
      _autoPlayTimerStart();
    }
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(
            height: widget.height,
            child: PageView.builder(
              onPageChanged: _onPageChanged,
              itemCount: widget.isLoop ? null : widget.children.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                final correctIndex = index % widget.children.length;
                return widget.children[correctIndex];
              },
            ),
          ),
          Positioned(
            right: 0,
            bottom: 20,
            child: ValueListenableBuilder<int>(
              valueListenable: _currentPageNotifier,
              builder: (context, value, child) {
                return Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      Container(
                        decoration: new BoxDecoration(
                          color: _currentPageNotifier.value == 0
                              ? Colors.black12
                              : Colors.pink,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              _autoPlayTimerStart();
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: new BoxDecoration(
                          color: _currentPageNotifier.value == 3
                              ? Colors.black12
                              : Colors.pink,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              _autoPlayTimerStart();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 10,
            bottom: 20,
            child: ValueListenableBuilder<int>(
              valueListenable: _currentPageNotifier,
              builder: (context, value, child) {
                return Indicator(
                  count: widget.children.length,
                  currentIndex: value % widget.children.length,
                  activeColor: widget.indicatorColor,
                  backgroundColor: widget.indicatorBackgroundColor,
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 180,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Title ${widget.initialPage + 1}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Description ${widget.initialPage + 1}",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
