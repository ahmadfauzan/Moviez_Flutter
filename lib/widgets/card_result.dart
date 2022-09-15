import 'package:flutter/material.dart';

import '../theme.dart';

class Card_result extends StatelessWidget {
  const Card_result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/cover_result.png',
                width: 100,
                height: 125,
                // width: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark II',
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Horror',
                      style: subTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/rate_4.png',
                      width: 100,
                      height: 18,
                      // width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/cover_result2.png',
                width: 100,
                height: 125,
                // width: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark Knight',
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Heroes',
                      style: subTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/rate.png',
                      width: 100,
                      height: 18,
                      // width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/cover_result3.png',
                width: 100,
                height: 125,
                // width: 300,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Dark Tower',
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Action',
                      style: subTitleTextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/rate_4.png',
                      width: 100,
                      height: 18,
                      // width: 300,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
