import 'package:flutter/material.dart';
import 'package:moviez/search.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/card_corousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:moviez/widgets/card_suggest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moviez',
      theme: ThemeData(
        fontFamily: 'Avenir',
        brightness: Brightness.light,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Moviez'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  List cardList = [Item1(), Item2(), Item3(), Item4()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Moviez',
                      style: titleTextStyle.copyWith(
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Watch much easier',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Search()),
                    );
                  },
                  child: const Icon(
                    Icons.search,
                    // color: Colors.green,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget carousel() {
      return Container(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 350.0,
                autoPlay: false,
                aspectRatio: 2.0,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                padEnds: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    height: 350,
                    width: 300,
                    child: Container(
                      child: card,
                    ),
                  );
                });
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget suggest() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From Disney',
              style: titleTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const card_suggest(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                const SizedBox(
                  height: 10,
                ),
                carousel(),
                const SizedBox(
                  height: 10,
                ),
                suggest(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
