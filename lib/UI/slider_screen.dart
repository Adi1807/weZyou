import 'package:flutter/material.dart';
import 'package:we_z_you/UI/image_slider_widget.dart';
import 'package:we_z_you/UI/slider_item.dart';
import 'package:we_z_you/constants/colors.dart';

class SliderScreen extends StatefulWidget {
  static const String routeName = '/SliderScreen';

  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final List<SliderItem> imageSlideList = <SliderItem>[
    SliderItem(
        "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
        'Category 1'),
    SliderItem(
        "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
        'Category 2'),
    SliderItem(
        "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
        'Category 3'),
    SliderItem(
        "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
        'Category 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: blackColor,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Product',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: blackColor,
          ),
        ),
      ),
      drawer: Drawer(),
      body: Container(
        child: _getSliderImageList(),
      ),
    );
  }

  Widget _getSliderImageList() {
    return ImageSlideshow(
      height: 510,
      initialPage: 0,
      indicatorColor: Colors.pink,
      indicatorBackgroundColor: Colors.black12,
      onPageChanged: (value) async {},
      autoPlayInterval: 5000,
      isLoop: true,
      children: [
        for (SliderItem slideItem in imageSlideList)
          FittedBox(
            child: Container(
              alignment: Alignment.topCenter,
              height: 510,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: InkWell(
                  onTap: () {},
                  child: Image.network(
                    slideItem.image,
                    height: 390,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
