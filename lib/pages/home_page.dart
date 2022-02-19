import 'package:flutter/material.dart';

import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/texts.dart';

import '../r.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget poster() {
      return SizedBox(
        width: double.infinity,
        height: 500,
        child: Stack(
          children: [
            Image.asset(R.images_poster),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      blackColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      blackColor,
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 12,
                    right: 17,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        R.images_icon,
                        width: 28,
                        height: 28,
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Image.asset(
                        R.images_ic_screen_mirror,
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(width: 15),
                      Image.asset(
                        R.images_avatar2,
                        width: 23,
                        height: 23,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Acara TV',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 13,
                        ),
                      ),
                      const Text(
                        'Film',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 13,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            'Kategori',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 13,
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: whiteColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                child: Text(
                  'Aneh • Romantis • Komedi',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listPutar() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Column(
                children: [
                  const Icon(
                    Icons.add,
                    size: 20,
                    color: whiteColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text(
                      'Daftar Saya',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 83,
                height: 27,
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.play_arrow,
                      size: 18,
                      color: blackColor,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Putar',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.only(right: 40),
              child: Column(
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 20,
                    color: whiteColor,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Text(
                      'Info',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget title(String title) {
      return Container(
        margin: const EdgeInsets.only(top: 15),
        child: Text(
          title,
          style: TextStyle(
            color: whiteColor,
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
      );
    }

    var listNew = [
      R.images_love_you,
      R.images_tinder,
      R.images_forecasting,
      R.images_ai_love_you,
      R.images_thirty_nine,
    ];

    var listTrending = [
      R.images_fishbowl,
      R.images_taxi_driver,
      R.images_cloy,
      R.images_thirty_nine,
      R.images_ai_love_you,
    ];

    var listOriginal = [
      R.images_original_netflix1,
      R.images_original_netflix2,
      R.images_original_netflix3,
      R.images_original_netflix4,
      R.images_original_netflix5,
    ];

    var listTrendingIndo = [
      Trending(imageNumber: R.images_one, imageMovie: R.images_ai_love_you),
      Trending(imageNumber: R.images_two, imageMovie: R.images_forecasting),
      Trending(imageNumber: R.images_three, imageMovie: R.images_fishbowl),
      Trending(imageNumber: R.images_four, imageMovie: R.images_thirty_nine),
      Trending(imageNumber: R.images_five, imageMovie: R.images_taxi_driver),
    ];

    var listContinue = [
      Continue(image: R.images_forecasting, progress: 0.3),
      Continue(image: R.images_ai_love_you, progress: 0.5),
    ];

    Widget itemMovie(
      String image,
      double? width,
      double? height,
      bool? margin,
    ) {
      return Container(
        margin: margin == true ? const EdgeInsets.only(right: 5) : null,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            image,
            width: width ?? 100,
            height: height ?? 145,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget itemMovieNumber(String number, String image) {
      return SizedBox(
        height: 165,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: itemMovie(image, 115, 165, null),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                number,
                height: 82,
              ),
            ),
          ],
        ),
      );
    }

    Widget itemMovieContinue(String image, double progress) {
      return Container(
        width: 115,
        height: 205,
        margin: const EdgeInsets.only(right: 5),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6),
          topRight: Radius.circular(6),
        )),
        child: Column(
          children: [
            SizedBox(
              width: 115,
              height: 165,
              child: Stack(
                children: [
                  itemMovie(
                    image,
                    115,
                    165,
                    false,
                  ),
                  Center(
                    child: Image.asset(
                      R.images_ic_play,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),
            LinearProgressIndicator(
              minHeight: 5,
              color: redColor,
              value: progress,
              backgroundColor: blackColor2,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.info_outline,
                    size: 25,
                    color: whiteColor,
                  ),
                  Image.asset(
                    R.images_ic_dot,
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget itemBottomNavigation(
      String icon,
      String name,
      bool active,
    ) {
      var selectedColor = active == true ? whiteColor : inactiveColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            icon,
            width: 23,
            height: 23,
          ),
          Text(
            name,
            style: TextStyle(
              color: selectedColor,
              fontSize: 8,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              itemBottomNavigation(R.images_ic_home, 'Beranda', true),
              itemBottomNavigation(
                  R.images_ic_new_and_popular, 'Baru & Populer', false),
              itemBottomNavigation(R.images_ic_search, 'Cari', false),
              itemBottomNavigation(R.images_ic_download, 'Download', false),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          poster(),
          listPutar(),
          title('Baru Ditambahkan'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    listNew.map((e) => itemMovie(e, null, null, true)).toList(),
              ),
            ),
          ),
          title('Sedang Tren Sekarang'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listTrending
                    .map((e) => itemMovie(e, null, null, true))
                    .toList(),
              ),
            ),
          ),
          title('Hanya di Netflix'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listOriginal
                    .map((e) => itemMovie(e, 150, 307, true))
                    .toList(),
              ),
            ),
          ),
          title('Teratas di Indonesia Hari ini'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: listTrendingIndo
                  .map((e) => itemMovieNumber(e.imageNumber, e.imageMovie))
                  .toList(),
            ),
          ),
          title('Lanjutkan Menonton untuk Yuhuu'),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Row(
                children: listContinue
                    .map(
                      (e) => itemMovieContinue(
                        e.image,
                        e.progress,
                      ),
                    )
                    .toList()),
          ),
        ],
      ),
    );
  }
}

class Trending {
  final String imageNumber;
  final String imageMovie;
  Trending({
    required this.imageNumber,
    required this.imageMovie,
  });
}

class Continue {
  final String image;
  final double progress;
  Continue({
    required this.image,
    required this.progress,
  });
}
