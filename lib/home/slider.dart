import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeSlider extends StatefulWidget {
  @override
  _HomeSliderState createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  final List<String> imgList = [
    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone11-select-2019-family?wid=882&amp;hei=1058&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1567022175704',
    'https://i.pinimg.com/originals/39/c7/db/39c7db217992e9d89bcdbcc9d7ccb700.jpg',
    'https://cdn.vox-cdn.com/thumbor/82wwMkLqdKz9i-AWIv72DFx4xtE=/0x26:640x453/1200x800/filters:focal(0x26:640x453)/cdn.vox-cdn.com/assets/3729295/logo.jpg',
    'https://i.vimeocdn.com/video/777692698.webp?mw=1000&mh=562&q=70',
    'https://pluspng.com/img-png/xiaomi-png-new-svg-image-2000.png',
    'https://www.logo-designer.co/wp-content/uploads/2019/02/2019-vivo-new-logo-design.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Center(
            child: CarouselSlider(
              autoPlay: true,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              height: 350.0,
              viewportFraction: 1.0,
              items: imgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: i,
                          placeholder: (context, url) => Center(
                              child: CircularProgressIndicator()
                          ),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        )
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
