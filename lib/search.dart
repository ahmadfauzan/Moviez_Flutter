import 'package:flutter/material.dart';
import 'package:moviez/theme.dart';
import 'package:moviez/widgets/card_result.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final myController = TextEditingController(text: "The Dar");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Material(
                        child: TextField(
                          controller: myController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff0D0846),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 0.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                  width: 0, color: Color(0xffFFFFFF)),
                            ),
                            hintText: ' Search',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  'Search Result (3)',
                  style: primaryTextStyle.copyWith(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Card_result(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // dispose it here
    myController.dispose();
    super.dispose();
  }
}
