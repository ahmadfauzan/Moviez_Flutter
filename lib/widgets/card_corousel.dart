import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import '../theme.dart';

class Item1 extends StatelessWidget {
  const Item1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/cover_corousel.png',
                width: MediaQuery.of(context).size.width,
                height: 190,
                // width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Wick 4',
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Action, Crime',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/rate.png',
                  width: 90,
                  height: 18,
                  // width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/cover_corousel2.jpg',
                width: MediaQuery.of(context).size.width,
                height: 190,
                // width: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Onward',
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Animation, Adventure',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/rate.png',
                  width: 90,
                  height: 18,
                  // width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/cover_corousel3.jpg',
                width: MediaQuery.of(context).size.width,
                height: 190,
                // width: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Permission',
                      overflow: TextOverflow.ellipsis,
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Music',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/rate.png',
                  width: 90,
                  height: 18,
                  // width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                'assets/cover_corousel4.jpg',
                width: MediaQuery.of(context).size.width,
                height: 190,
                // width: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark Knight',
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Heroes',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/rate.png',
                  width: 90,
                  height: 18,
                  // width: 300,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
