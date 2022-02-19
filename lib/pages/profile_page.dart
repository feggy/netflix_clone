import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/routes/routes.dart';

import '../r.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    final listAvatar = [
      Avatar(
        image: R.images_avatar1,
        name: 'Ayam',
      ),
      Avatar(
        image: R.images_avatar2,
        name: 'Yuhuu',
      ),
      Avatar(
        image: R.images_avatar3,
        name: 'Lisa',
      ),
      Avatar(
        image: R.images_avatar4,
        name: 'Blek',
      ),
      Avatar(
        image: R.images_avatar5,
        name: 'Pink',
      ),
    ];

    Widget avatar(
      String image,
      String name,
    ) {
      return Column(
        children: [
          Container(
            width: 94,
            height: 94,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                color: whiteColor,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                right: 20,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(),
                  Text(
                    'Siapa yang Menonton?',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1,
                padding: const EdgeInsets.only(
                  left: 80,
                  right: 80,
                  top: 100,
                ),
                mainAxisSpacing: 44,
                crossAxisSpacing: 20,
                shrinkWrap: true,
                children: listAvatar
                    .map(
                      (e) => GestureDetector(
                        onTap: () => router.go(MyRoutes.homePage),
                        child: avatar(
                          e.image,
                          e.name,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Avatar {
  final String image;
  final String name;
  Avatar({
    required this.image,
    required this.name,
  });
}
