import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moviecarousel/Widgets/top_rated_film.dart';
import 'package:moviecarousel/Widgets/category_title.dart';
import 'package:moviecarousel/Widgets/now_showing.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 45.0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0XFF444c6b),
                    radius: 25.0,
                    child: Lottie.asset(
                      'assets/lotties/profile.json',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            'Arie',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Book your favourite movie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0XFF444c6b),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_rounded,
                        color: Colors.white,
                        size: 33.0,
                      ),
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(CircleBorder())),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2.0,
                  horizontal: 18.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: const Color(0XFF2a3457),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    hintText: 'Search movie..',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    iconColor: Colors.white,
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.tune_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: CategoryTitle(
                        primaryText: 'Now',
                        secondaryText: 'Showing',
                      ),
                    ),
                    SizedBox(height: 15.0),
                    NowShowingCarousel(),
                    SizedBox(height: 30.0),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: CategoryTitle(
                        primaryText: 'Top Rated',
                        secondaryText: 'Movies',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    AnimatedFilmSlide(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
