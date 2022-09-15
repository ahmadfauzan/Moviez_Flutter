import 'package:flutter/material.dart';

import '../theme.dart';

class card_suggest extends StatelessWidget {
  const card_suggest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/cover_suggest.png',
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
                      'Mulan Session',
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'History, War',
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
                'assets/cover_suggest2.png',
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
                      'Beauty & Beast',
                      style: primaryTextStyle.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Sci-fiction',
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
        ],
      ),
    );
  }
}
